# FFMPEG 编译Android So 步骤

1. 官网下载ffmpeg源码

2. 命令行输入 ./configuration 这一步及其重要，不然后面无法编译

3. 具体配置如下
   
   增加build_android.sh
   
   ```
   
   #!/bin/bash
   set -x
   # 目标Android版本
   API=21
   CPU=armv7-a
   #so库输出目录
   OUTPUT=/Users/loyal888/Desktop/ffmpeg/android/$CPU
   # NDK的路径，根据自己的NDK位置进行设置
   NDK=/Users/loyal888/Library/Android/sdk/ndk/21.0.6113669
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
     --cpu=armv7-a \
     --enable-asm \
     --enable-neon \
     --enable-cross-compile \
     --enable-shared \
     --disable-static \
     --disable-doc \
     --disable-ffplay \
     --disable-ffprobe \
     --disable-symver \
     --disable-ffmpeg \
     --sysroot=$SYSROOT \
     --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
     --cross-prefix-clang=$TOOLCHAIN/bin/armv7a-linux-androideabi$API- \
     --extra-cflags="-fPIC"
   
     make clean all
     # 这里是定义用几个CPU编译
     make -j8
     make install
   }
   
   build
   ```

参考文献：[https://juejin.im/post/6844904039524597773](https://juejin.im/post/6844904039524597773)


