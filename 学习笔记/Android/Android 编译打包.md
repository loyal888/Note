# Android 编译打包

[https://juejin.im/post/6844903837443031054#heading-0](https://juejin.im/post/6844903837443031054#heading-0)

![](https://user-gold-cdn.xitu.io/2019/4/30/16a6cb3074255777?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)


打包分为以下几步，首先`解析AndroidMenifest.xml`文件，获取到应用的包名，通过包名来创建资源索引表。然后`添加被引用的资源包`，包括系统资源包、当前编译的应用资源包；接下来`收集资源文件，将收集的不需要编译的资源添加到Resource Tab中`;`编译values资源添加到Resource Tab`;给Bag资源`分配ID`；`编译xml资源文件，生成资源符号`;生成`resources.arsc`;编译AndroidMenifest.xml，生成R.java；打包apk；