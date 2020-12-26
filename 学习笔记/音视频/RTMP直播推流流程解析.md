# 先看问题？
 1. 推流推流，流从哪里来？ ---->摄像头或者视频decode
 2. 假设来自摄像头，且把流封装成帧了，我怎么把帧组装成RTMP的格式---> RTMP的封装（RTMPPacket）
 3. 拿到了RTMPPacket怎么发送？----> 交给rtmp.c发送
 
 # 摄像头信息封装成视频帧
 //TODO 待补充
# RTMPPacket的生成
#### SPS、PPS的封装
```java
public void onSPSPPSInfo(byte[] sps, byte[] pps) {
                                if (rtmpPush != null) {
                                    rtmpPush.pushSPSPPS(sps, pps);
                                }
                            }
 /**
     * 将SPS PPS传递给native
     * @param sps
     * @param pps
     */
    public void pushSPSPPS(byte[] sps, byte[] pps) {
        if (sps != null && pps != null) {
            pushSPSPPS(sps, sps.length, pps, pps.length);
        }
    }

    private native void pushSPSPPS(byte[] sps, int sps_len, byte[] pps, int pps_len);

extern "C"
JNIEXPORT void JNICALL
Java_com_yxt_livepusher_network_rtmp_RtmpPush_pushSPSPPS(JNIEnv *env, jobject instance,
                                                          jbyteArray sps_, jint sps_len,
                                                          jbyteArray pps_, jint pps_len) {
    jbyte *sps = env->GetByteArrayElements(sps_, NULL);
    jbyte *pps = env->GetByteArrayElements(pps_, NULL);

    // TODO
    if (rtmpPush != NULL && !exit) {
        rtmpPush->pushSPSPPS(reinterpret_cast<char *>(sps), sps_len, reinterpret_cast<char *>(pps),
                             pps_len);
    }

    env->ReleaseByteArrayElements(sps_, sps, 0);
    env->ReleaseByteArrayElements(pps_, pps, 0);
}

void RtmpPush::pushSPSPPS(char *sps, int sps_len, char *pps, int pps_len) {

    int bodysize = sps_len + pps_len + 16;// TODO 为什么要加16？
    RTMPPacket *packet = static_cast<RTMPPacket *>(malloc(sizeof(RTMPPacket)));
    RTMPPacket_Alloc(packet, bodysize);
    RTMPPacket_Reset(packet);

    char *body = packet->m_body;

    int i = 0;

    body[i++] = 0x17;

    body[i++] = 0x00;
    body[i++] = 0x00;
    body[i++] = 0x00;
    body[i++] = 0x00;

    body[i++] = 0x01;
    body[i++] = sps[1];
    body[i++] = sps[2];
    body[i++] = sps[3];

    body[i++] = 0xFF;

    body[i++] = 0xE1;
    body[i++] = (sps_len >> 8) & 0xff;
    body[i++] = sps_len & 0xff;
    memcpy(&body[i], sps, sps_len);
    i += sps_len;

    body[i++] = 0x01;
    body[i++] = (pps_len >> 8) & 0xff;
    body[i++] = pps_len & 0xff;
    memcpy(&body[i], pps, pps_len);

    packet->m_packetType = RTMP_PACKET_TYPE_VIDEO;
    packet->m_nBodySize = bodysize;
    packet->m_nTimeStamp = 0;
    packet->m_hasAbsTimestamp = 0;
    packet->m_nChannel = 0x04;
    packet->m_headerType = RTMP_PACKET_SIZE_MEDIUM;
    packet->m_nInfoField2 = rtmp->m_stream_id;

    queue->putRtmpPacket(packet); // 这里会通知发送线程取packet
}   

int MessageQueue::putRtmpPacket(RTMPPacket *packet) {
    // 入队之前上锁
    pthread_mutex_lock(&mutexPacket);
    queuePacket.push(packet);
    // 通知这里消息已经入队了
    pthread_cond_signal(&condPacket);
    // 解锁
    pthread_mutex_unlock(&mutexPacket);
    return 0;
}
                         
```
#### 视频信息封装（非PPS、SPS）
  ```java
    public void onVideoInfo(byte[] data, boolean keyframe) {
                                if (rtmpPush != null) {
                                    rtmpPush.pushVideoData(data, keyframe);
                                }
                            }

    public void pushVideoData(byte[] data, boolean keyframe) {
        if (data != null) {
            pushVideoData(data, data.length, keyframe);
        }
    }

   private native void pushVideoData(byte[] data, int data_len, boolean keyframe);

extern "C"
JNIEXPORT void JNICALL
Java_com_yxt_livepusher_network_rtmp_RtmpPush_pushVideoData(JNIEnv *env, jobject instance,
                                                             jbyteArray data_, jint data_len,
                                                             jboolean keyframe) {
    jbyte *data = env->GetByteArrayElements(data_, NULL);
    // TODO
    if (rtmpPush != NULL && !exit) {
        rtmpPush->pushVideoData(reinterpret_cast<char *>(data), data_len, keyframe);
    }
    env->ReleaseByteArrayElements(data_, data, 0);
}


void RtmpPush::pushVideoData(char *data, int data_len, bool keyframe) {

    int bodysize = data_len + 9;
    RTMPPacket *packet = static_cast<RTMPPacket *>(malloc(sizeof(RTMPPacket)));
    RTMPPacket_Alloc(packet, bodysize);
    RTMPPacket_Reset(packet);

    char *body = packet->m_body;
    int i = 0;

    if (keyframe) {
        // keyframe
        body[i++] = 0x17;
    } else {
        // inter-frame  inter frame(for AVC, a non-seekable frame) 不是关键帧，比如P帧
        // 故可通过与 0x17 或 0x27 的比较，来判断视频帧是否为关键帧。
        body[i++] = 0x27;
    }

    body[i++] = 0x01;
    body[i++] = 0x00;
    body[i++] = 0x00;
    body[i++] = 0x00;

    body[i++] = (data_len >> 24) & 0xff;
    body[i++] = (data_len >> 16) & 0xff;
    body[i++] = (data_len >> 8) & 0xff;
    body[i++] = data_len & 0xff;
    memcpy(&body[i], data, data_len);

    packet->m_packetType = RTMP_PACKET_TYPE_VIDEO;
    packet->m_nBodySize = bodysize;
    packet->m_nTimeStamp = RTMP_GetTime() - startTime;
    packet->m_hasAbsTimestamp = 0;
    packet->m_nChannel = 0x04;
    packet->m_headerType = RTMP_PACKET_SIZE_LARGE;
    packet->m_nInfoField2 = rtmp->m_stream_id;

    queue->putRtmpPacket(packet);
}
```
#### 音频信息封装

```java
	// 音频编码线程回调
   public void onAudioInfo(byte[] data) {
                                if (rtmpPushBack != null)
                                    rtmpPushBack.pushAudioData(data);
                            }
                    
    public void pushAudioData(byte[] data) {
        if (data != null) {
            pushAudioData(data, data.length);
        }
    }
    private native void pushAudioData(byte[] data, int data_len);
    
extern "C"
JNIEXPORT void JNICALL
Java_com_yxt_livepusher_network_rtmp_RtmpPush_pushAudioData(JNIEnv *env, jobject instance,
                                                             jbyteArray data_, jint data_len) {
    jbyte *data = env->GetByteArrayElements(data_, NULL);

    // TODO
    if (rtmpPush != NULL && !exit) {
        rtmpPush->pushAudioData(reinterpret_cast<char *>(data), data_len);
    }

    env->ReleaseByteArrayElements(data_, data, 0);
}

void RtmpPush::pushAudioData(char *data, int data_len) {

    int bodysize = data_len + 2;
    RTMPPacket *packet = static_cast<RTMPPacket *>(malloc(sizeof(RTMPPacket)));
    RTMPPacket_Alloc(packet, bodysize);
    RTMPPacket_Reset(packet);
    char *body = packet->m_body;
    body[0] = 0xAF; // HE-AAC 44 kHz 16 bit stereo
    body[1] = 0x01;
    memcpy(&body[2], data, data_len);

    packet->m_packetType = RTMP_PACKET_TYPE_AUDIO;
    packet->m_nBodySize = bodysize;
    packet->m_nTimeStamp = RTMP_GetTime() - startTime;
    packet->m_hasAbsTimestamp = 0;
    packet->m_nChannel = 0x04;
    packet->m_headerType = RTMP_PACKET_SIZE_LARGE;
    packet->m_nInfoField2 = rtmp->m_stream_id;
    queue->putRtmpPacket(packet);
}
```

我们可以看到音视频帧都封装成了`RTMPPacket`,	区别在于视频帧的body[0]为0x17或0x27、音频帧是0xAF

# RTMP 的连接
```java
 if (!RTMP_Connect(rtmpPush->rtmp, NULL)) {
//        LOGE("can not connect the url");
        rtmpPush->wlCallJava->onConnectFail("can not connect the url");
        // 结束线程
        goto end;
    }
    // 检查rtmp流
    if (!RTMP_ConnectStream(rtmpPush->rtmp, 0)) {

        rtmpPush->wlCallJava->onConnectFail("can not connect the stream of service");
        // 结束线程
        goto end;
    }
    // 调用java层，连接成功
    rtmpPush->wlCallJava->onConnectsuccess();
    // 连接成功，开始推送
    rtmpPush->startPushing = true;
    // 开始时间戳
    rtmpPush->startTime = RTMP_GetTime();
```
# RTMPPacket的发送
RTMP发送线程，RTMP服务器连接成功后就会读取RTMPPacket，如果没有Packet就会阻塞，获取到packet就调用rtmp.c 发送RTMP数据
```java
while (true) {
        // 停止推送
        if (!rtmpPush->startPushing) {
            break;
        }

        RTMPPacket *packet = NULL;
        // 获取RtmpPacket,线程会阻塞，直到获取到packet
        packet = rtmpPush->queue->getRtmpPacket();
        if (packet != NULL) {
            // 发送RTMP数据
            int result = RTMP_SendPacket(rtmpPush->rtmp, packet, 1);
            LOGD("RTMP_SendPacket result is %d", result);
            RTMPPacket_Free(packet);
            free(packet);
            packet = NULL;
        } else {
            LOGD("RTMP_SendPacket else %d", 123);
        }
    }
```