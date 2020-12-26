# 视频信息分析
## H264BSAnalyzer（不推荐）
- 简介
> - Windows平台软件，使用需要安装虚拟机
> 
> - [功能用法](https://github.com/latelee/H264BSAnalyzer)
>
> - [exe下载](https://github.com/latelee/H264BSAnalyzer/blob/master/release/H264BSAnalyzer.exe)
>
>
## FFMPEG（推荐）
```
1.查看流信息： ffplay http://wliveplay.58cdn.com.cn/live/tThf1319104011445526529.flv -loglevel debug
2.关键帧抓取： ffmpeg -i http://wliveplay.58cdn.com.cn/live/tThf1319104011445526529.flv -vf select='eq(pict_type\,I)' -vsync 2 -s 160x90 -f image2 thumbnails-%02d.jpeg
```

# 抓包分析工具
##  Wireshark
- 能够抓取并查看到**未加密**的RTMP数据包，可以对比协议进行分析。
- 对于使用**TLS**加密的数据包，抓到之后，无能为力。


