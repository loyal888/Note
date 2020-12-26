# 简单使用
`ffplay [options] [input_url]`
```bash
～: ffplay http://test//live/ItnY1319147801917050880.flv
ffplay version N-98661-g6fdf3cc Copyright (c) 2003-2020 the FFmpeg developers
  built with Apple clang version 11.0.3 (clang-1103.0.32.62)
  configuration: 
  libavutil      56. 58.100 / 56. 58.100
  libavcodec     58.100.100 / 58.100.100
  libavformat    58. 50.100 / 58. 50.100
  libavdevice    58. 11.101 / 58. 11.101
  libavfilter     7. 87.100 /  7. 87.100
  libswscale      5.  8.100 /  5.  8.100
  libswresample   3.  8.100 /  3.  8.100
Input #0, flv, from 'http://test//live/ItnY1319147801917050880.flv':
  Metadata:
    fileSize        : 0
    audiochannels   : 2
    2.1             : false
    3.1             : false
    4.0             : false
    4.1             : false
    5.1             : false
    7.1             : false
    encoder         : obs-output module (libobs version 26.0.0)
  Duration: 00:00:00.00, start: 10377.703000, bitrate: N/A
    Stream #0:0: Audio: aac (LC), 48000 Hz, stereo, fltp, 163 kb/s
    Stream #0:1: Video: h264 (High), yuv420p(tv, bt709, progressive), 1280x720, 2560 kb/s, 30 fps, 30 tbr, 1k tbn, 60 tbc
10479.21 A-V: -0.020 fd=   1 aq=   28KB vq=  308KB sq=    0B f=0/0   
```    
> fps表示平均帧率，总帧数除以总时长（以s为单位）。
>
> tbr  表示帧率，该参数倾向于一个基准，往往tbr跟fps相同。
>
> tbn 表示视频流 timebase（时间基准），比如ts流的timebase 为90000，flv格式视频流timebase为1000
>
> tbc 表示视频流codec timebase ，对于264码流该参数通过解析sps间接获取（通过sps获取帧率）

# 什么是FFplay？
FFplay是一个使用FFmpeg库和SDL库的非常简单和可移植的**媒体播放器**。
可以播放网络流，可以查看音视频流信息、当前帧暂停、逐帧播放、指定视频同步格式等。

# 流限定符
- `-codec:a:1 ac3` contains the `a:1` stream specifier, which matches the second audio stream. Therefore, it would select the `ac3` codec for the second audio stream.

- `-codec copy` or `-codec: copy` would copy all the streams without reencoding.

- `-threads:1 4` would set the thread count for the second stream to 4

- `v` or `V` for video, `a` for audio, `s` for subtitle, `d` for data, and `t` for attachments. `v` matches _**all**_ video streams, `V` _only_ matches video streams which are not attached pictures, video thumbnails or cover arts.

# 通用可选参数（在ff*工具之间通用）
#### `-L` : 显示许可信息
#### `-h, -?, -help, --help`:Show help.
#### `ffplay -version`:显示版本信息
 
```
~: ffplay -version
ffplay version N-98661-g6fdf3cc Copyright (c) 2003-2020 the FFmpeg developers
built with Apple clang version 11.0.3 (clang-1103.0.32.62)
configuration: 
libavutil      56. 58.100 / 56. 58.100
libavcodec     58.100.100 / 58.100.100
libavformat    58. 50.100 / 58. 50.100
libavdevice    58. 11.101 / 58. 11.101
libavfilter     7. 87.100 /  7. 87.100
libswscale      5.  8.100 /  5.  8.100
libswresample   3.  8.100 /  3.  8.100
```
- `ffplay -formats`:显示可用格式（包括设备）
- `ffplay -demuxers`:显示可用的多路分配器
- `ffplay -muxers`:显示可用的混合器
- `ffplay -devices`:显示可用设备
- `ffplay -codecs`:Show all codecs known to libavcodec.
- `ffplay -decoders`:Show available decoders.
- `ffplay -encoders`:Show all available encoders.
- `ffplay -bsfs`:Show available bitstream filters.
> `Bitstream Filters:A bitstream filter operates on the encoded stream data, and performs bitstream level modifications without performing decoding.`
- `ffplay -protocols`:Show available protocols.
- `ffplay -filters`:Show available libavfilter filters.
- `ffplay -pix_fmts`:Show available pixel formats.
- `ffplay -sample_fmts`:Show available sample formats.
- `ffplay -layouts`:Show channel names and standard channel layouts.
```
loyal888@loyal888deMacBook-Pro Note % ffplay -layouts
ffplay version N-98661-g6fdf3cc Copyright (c) 2003-2020 the FFmpeg developers
  built with Apple clang version 11.0.3 (clang-1103.0.32.62)
  configuration: 
  libavutil      56. 58.100 / 56. 58.100
  libavcodec     58.100.100 / 58.100.100
  libavformat    58. 50.100 / 58. 50.100
  libavdevice    58. 11.101 / 58. 11.101
  libavfilter     7. 87.100 /  7. 87.100
  libswscale      5.  8.100 /  5.  8.100
  libswresample   3.  8.100 /  3.  8.100
Individual channels:
NAME           DESCRIPTION
FL             front left
FR             front right
FC             front center
LFE            low frequency
BL             back left
BR             back right
FLC            front left-of-center
FRC            front right-of-center
BC             back center
SL             side left
SR             side right
TC             top center
TFL            top front left
TFC            top front center
TFR            top front right
TBL            top back left
TBC            top back center
TBR            top back right
DL             downmix left
DR             downmix right
WL             wide left
WR             wide right
SDL            surround direct left
SDR            surround direct right
LFE2           low frequency 2
TSL            top side left
TSR            top side right
BFC            bottom front center
BFL            bottom front left
BFR            bottom front right

Standard channel layouts:
NAME           DECOMPOSITION
mono           FC
stereo         FL+FR
2.1            FL+FR+LFE
3.0            FL+FR+FC
3.0(back)      FL+FR+BC
4.0            FL+FR+FC+BC
quad           FL+FR+BL+BR
quad(side)     FL+FR+SL+SR
3.1            FL+FR+FC+LFE
5.0            FL+FR+FC+BL+BR
5.0(side)      FL+FR+FC+SL+SR
4.1            FL+FR+FC+LFE+BC
5.1            FL+FR+FC+LFE+BL+BR
5.1(side)      FL+FR+FC+LFE+SL+SR
6.0            FL+FR+FC+BC+SL+SR
6.0(front)     FL+FR+FLC+FRC+SL+SR
hexagonal      FL+FR+FC+BL+BR+BC
6.1            FL+FR+FC+LFE+BC+SL+SR
6.1(back)      FL+FR+FC+LFE+BL+BR+BC
6.1(front)     FL+FR+LFE+FLC+FRC+SL+SR
7.0            FL+FR+FC+BL+BR+SL+SR
7.0(front)     FL+FR+FC+FLC+FRC+SL+SR
7.1            FL+FR+FC+LFE+BL+BR+SL+SR
7.1(wide)      FL+FR+FC+LFE+BL+BR+FLC+FRC
7.1(wide-side) FL+FR+FC+LFE+FLC+FRC+SL+SR
octagonal      FL+FR+FC+BL+BR+BC+SL+SR
hexadecagonal  FL+FR+FC+BL+BR+BC+SL+SR+TFL+TFC+TFR+TBL+TBC+TBR+WL+WR
downmix        DL+DR
22.2           FL+FR+FC+LFE+BL+BR+FLC+FRC+BC+SL+SR+TC+TFL+TFC+TFR+TBL+TBC+TBR+LFE2+TSL+TSR+BFC+BFL+BFR

```

- `ffmpeg -loglevel [flags+]loglevel | -v [flags+]loglevel`:Set logging level and flags used by the library.
```ffmpeg -loglevel repeat+level+verbose -i input output```

# AVOptions
`ffmpeg -i multichannel.mxf -map 0:v:0 -map 0:a:0 -map 0:a:0 -c:a:0 ac3 -b:a:0 640k -ac:a:1 2 -c:a:1 aac -b:2 128k out.mp4`
In the above example, a multichannel audio stream is mapped twice for output. The first instance is encoded with codec ac3 and bitrate 640k. The second instance is downmixed to 2 channels and encoded with codec aac. A bitrate of 128k is specified for it using absolute index of the output stream.

# Main options
`-x width`:Force displayed width.

`-y height`:Force displayed height.

`-fs`: Start in fullscreen mode.

`-an`:Disable audio.

`-vn`:Disable video.

`-sn`:Disable subtitles.

`-ss pos`:Seek to pos. Note that in most formats it is not possible to seek exactly, so ffplay will seek to the nearest seek point to pos

`-t duration`:Play duration seconds of audio/video.(单位为秒,时间到后暂停为当前帧)  

`-nodisp`:Disable graphical display.

`-noborder`:Borderless window.

`-alwaysontop`:Window always on top. Available on: X11 with SDL >= 2.0.5, Windows SDL >= 2.0.6.

`-volume`:Set the startup volume. 0 means silence, 100 means no volume reduction or amplification.

`-f fmt`:Force format.

`-window_title title`:Set window title (default is the input filename).

`-loop number`:Loops movie playback <number> times. 0 means forever.

`-showmode mode`:Set the show mode to use. 
    Available values for mode are:
    
    ‘0, video’
    show video

    ‘1, waves’
    show audio waves

    ‘2, rdft’

`-stats`:Print several playback statistics, in particular show the stream duration, the codec parameters, the current position in the stream and the audio/video synchronisation drift. 禁用使用：`-nostats`

`-fast`:非规范优化

`-sync type`:Set the master clock to audio (type=`audio`), video (type=`video`) or external (type=`ext`). Default is audio. 

`-exitonkeydown`:Exit if any key is pressed.

`-exitonmousedown`:Exit if any mouse button is pressed.

# While playing
```
q, ESC
Quit.

f
Toggle full screen.

p, SPC
Pause.

m
Toggle mute.

9, 0
Decrease and increase volume respectively.

/, *
Decrease and increase volume respectively.

a
Cycle audio channel in the current program.

v
Cycle video channel.

t
Cycle subtitle channel in the current program.

c
Cycle program.

w
Cycle video filters or show modes.

s
Step to the next frame.

Pause if the stream is not already paused, step to the next video frame, and pause.

left/right
Seek backward/forward 10 seconds.

down/up
Seek backward/forward 1 minute.

page down/page up
Seek to the previous/next chapter. or if there are no chapters Seek backward/forward 10 minutes.

right mouse click
Seek to percentage in file corresponding to fraction of width.

left mouse double-click
Toggle full screen.
```
# 参考资料
- [FFmplay官方文档](https://ffmpeg.org/ffplay.html)
- [FLV、F4V格式官方文档](https://www.adobe.com/content/dam/acom/en/devnet/flv/video_file_format_spec_v10.pdf)