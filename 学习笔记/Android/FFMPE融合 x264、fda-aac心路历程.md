# FFMPE融合 x264、fda-aac心路历程

**x264、fda-aac并不是安装到电脑上就行了，需要编译android上使用的lib，记住我这句话！！**

1. git下载x264、fda-aac源码，没有问题吧？

2. 在源码文件夹下建立build.sh(用来生成android lib)

3. x264的编译脚本
   
   ```bash
   NDK=/Users/loyal888/Desktop/android-ndk-r15c # 注意这里的版本 r15！！！
   API=21 #最低支持Android版本
   HOST_PLATFORM=darwin-x86_64
   cd x264
   function build_one { 
     OUTPUT=$(pwd)/"android"/"$CPU"
     echo "开始编译"
     echo "CPU = $CPU "
     echo "OUTPUT = $OUTPUT "
     echo "CROSS_PREFIX = $CROSS_PREFIX "
     echo "SYSROOT = $SYSROOT "
     echo "EXTRA_CFLAGS = $EXTRA_CFLAGS "
     echo "EXTRA_LDFLAGS = $EXTRA_LDFLAGS "
     ./configure \
     --prefix=$OUTPUT \
     --cross-prefix=$CROSS_PREFIX \
     --sysroot=$SYSROOT \
     --host=$HOST \
     --disable-asm \
     --disable-shared \
     --enable-static \
     --disable-opencl \
     --enable-pic \
     --disable-cli \
     --extra-cflags="$EXTRA_CFLAGS" \
     --extra-ldflags="$EXTRA_LDFLAGS" 
      make clean 
      make -j4
      make install
      echo "编译结束"
    }
   CPUS="armeabi-v7a x86"
   if [ "$*" ]
   then
        CPUS="$*"   #如果有输入参数 则只编译 该架构
   fi
   echo "编译以下 架构 $CPUS"
   
   for CPU_TEMP in $CPUS
   do
        case $CPU_TEMP in 
             "armeabi-v7a")
                  CPU="armeabi-v7a"
                  CROSS_PREFIX=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/$HOST_PLATFORM/bin/arm-linux-androideabi-
                  SYSROOT=$NDK/platforms/android-$API/arch-arm/
                  EXTRA_CFLAGS="-D__ANDROID_API__=$API -isysroot $NDK/sysroot -I$NDK/sysroot/usr/include/arm-linux-androideabi -Os -fPIC -marm"
                  EXTRA_LDFLAGS="-marm"
                  HOST=arm-linux
                  build_one
             ;;
             "x86")
                  CPU="x86"
                  CROSS_PREFIX=$NDK/toolchains/x86-4.9/prebuilt/$HOST_PLATFORM/bin/i686-linux-android-
                  SYSROOT=$NDK/platforms/android-$API/arch-x86/
                  EXTRA_CFLAGS="-D__ANDROID_API__=$API -isysroot $NDK/sysroot -I$NDK/sysroot/usr/include/i686-linux-android -Os -fPIC"
                  EXTRA_LDFLAGS=""
                  HOST=i686-linux
                  build_one
             ;;
        esac
   done
   ```

4. fda-aac 编译脚本

```bash
ANDROID_NDK_ROOT=/Users/loyal888/Desktop/android-ndk-r15c
TOOLCHAIN=$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64
SYSROOT=$ANDROID_NDK_ROOT/platforms/android-21/arch-arm/
CROSS_PREFIX=$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-

CFLAGS=""

FLAGS="--enable-static  --host=$HOST --target=android --disable-asm "

export CXX="${CROSS_PREFIX}g++ --sysroot=${SYSROOT}"
export LDFLAGS=" -L$SYSROOT/usr/lib  $CFLAGS "
export CXXFLAGS=$CFLAGS
export CFLAGS=$CFLAGS
export CC="${CROSS_PREFIX}gcc --sysroot=${SYSROOT}"
export AR="${CROSS_PREFIX}ar"
export LD="${CROSS_PREFIX}ld"
export AS="${CROSS_PREFIX}gcc"


./configure --prefix=/Users/loyal888/Desktop/fdk-aac-0.1.6/android/armeabi-v7a \
--enable-static \
--host=arm-linux \
--target=android \
--enable-pic \
--enable-strip \
--disable-asm \
```

5. ffmepg的编译脚本
   
   ```bash
   #!/bin/bash
   set -x
   # 目标Android版本
   API=21
   CPU=armv7-a
   #so库输出目录
   OUTPUT=/Users/loyal888/Desktop/ffmpeg/android/$CPU
   # NDK的路径，根据自己的NDK位置进行设置 注意这里的ndk ！！！
   NDK=/Users/loyal888/Library/Android/sdk/ndk/21.0.6113669
   # NDK=/Users/loyal888/Desktop/android-ndk-r15c
   # 编译工具链路径
   TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/darwin-x86_64
   # 编译环境
   SYSROOT=$TOOLCHAIN/sysroot
   
   function build
   {
     ./configure \
     --prefix=$OUTPUT \
     --target-os=android \
     --arch=arm \
     --cc=$TOOLCHAIN/bin/armv7a-linux-androideabi$API-clang \
     --cxx=$TOOLCHAIN/bin/armv7a-linux-androideabi$API-clang++ \
     --cpu=armv7-a \
     --sysroot=$SYSROOT \
     --disable-stripping \
     --nm=$TOOLCHAIN/bin/arm-linux-androideabi-nm \
     --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
     --cross-prefix-clang=$TOOLCHAIN/bin/armv7a-linux-androideabi$API- \
     --enable-asm \
     --enable-neon \
     --enable-cross-compile \
     --enable-shared \
     --enable-static \
     --enable-pthreads \
     --enable-doc \
     --enable-ffplay \
     --enable-ffprobe \
     --enable-symver \
     --enable-ffmpeg \
     --enable-libx264 \
     --enable-gpl \
     --enable-small \
   --enable-encoders \
   --enable-neon \
   --enable-libfdk_aac \
   --enable-encoder=libx264 \
   --enable-encoder=libfdk_aac \
   --enable-encoder=mjpeg \
   --enable-encoder=png \
   --enable-nonfree \
   --enable-muxers \
   --enable-muxer=mov \
   --enable-muxer=mp4 \
   --enable-muxer=h264 \
   --enable-muxer=avi \
   --enable-muxer=aac \
   --enable-decoders \
   --enable-decoder=aac \
   --enable-decoder=aac_latm \
   --enable-decoder=h264 \
   --enable-decoder=mpeg4 \
   --enable-decoder=mjpeg \
   --enable-decoder=png \
   --enable-demuxers \
   --enable-demuxer=image2 \
   --enable-demuxer=h264 \
   --enable-demuxer=aac \
   --enable-demuxer=avi \
   --enable-demuxer=mpc \
   --enable-demuxer=mov \
   --enable-demuxer=concat \
   --enable-protocol=concat \
   --enable-parsers \
   --enable-parser=aac \
   --enable-parser=ac3 \
   --enable-parser=h264 \
   --enable-protocols \
   --enable-protocol=file \
   --enable-zlib \
   --enable-avfilter \
   --enable-outdevs \
   --enable-debug=3 \
   --enable-ffprobe \
   --enable-ffplay \
   --enable-ffmpeg \
   --enable-postproc \
   --enable-avdevice \
   --enable-symver \
   --enable-stripping \
   --extra-cflags="-I/Users/loyal888/Desktop/x264-master/android/armeabi-v7a/include" \
   --extra-cflags="-I/Users/loyal888/Desktop/fdk-aac-0.1.6/android/armeabi-v7a/include" \
   --extra-ldflags="-L/Users/loyal888/Desktop/x264-master/android/armeabi-v7a/lib" \
   --extra-ldflags="-L/Users/loyal888/Desktop/fdk-aac-0.1.6/android/armeabi-v7a/lib" \
   --extra-cflags="-Os -march=armv7-a -fPIC -DANDROID -mfpu=neon -mfloat-abi=softfp -L/Users/loyal888/Library/Android/sdk/ndk/21.0.6113669/platforms/android-19/arch-arm/usr/lib -L/usr/local/include -L/usr/lib -L/usr/local/Cellar" \
   --extra-ldflags="-L/usr/lib -marm -L/usr/local/Cellar -L/usr/local/include"
     # 这里是定义用几个CPU编译
     # make -j8
     # make install
     }
   build
   
   ```

总结： 1. 网上的脚本好多都不能用

2.注意ffmepg编译使用的ndk版本
