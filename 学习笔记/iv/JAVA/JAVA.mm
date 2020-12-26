{"objectClass":"NSDictionary","root":{"objectClass":"MindNode","ID":"SOE5R","rootPoint":{"objectClass":"CGPoint","x":360,"y":4895.75},"lineColorHex":"#BBBBBB","children":{"0":{"objectClass":"MindNode","ID":"7965F","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"3MJ2Q","lineColorHex":"#BF58F5","children":{"0":{"objectClass":"MindNode","ID":"JV974","lineColorHex":"#37C45A","text":"4、float f=3.4;是否正确？","remark":"答案：不正确。\n原因：精度不准确,应该用强制类型转换，如下所示：float f=(float)3.4 或float f = 3.4f\n\n在java里面，没小数点的默认是int,有小数点的默认是 double;\n\n编译器可以自动向上转型，如int 转成 long 系统自动转换没有问题，因为后者精度更高\ndouble 转成 float 就不能自动做了，所以后面的加上个 f;"},"1":{"objectClass":"MindNode","ID":"8FM20","lineColorHex":"#37C45A","text":"5、short s1 = 1; s1 = s1 + 1;有错吗?short s1 = 1; s1 += 1;有错吗？"},"2":{"objectClass":"MindNode","ID":"24BS1","lineColorHex":"#37C45A","text":"6、Java有没有goto？"},"3":{"objectClass":"MindNode","ID":"277M4","lineColorHex":"#37C45A","text":"7、int和Integer有什么区别？"},"4":{"objectClass":"MindNode","ID":"A7RE9","lineColorHex":"#37C45A","text":"8、&和&&的区别？"},"5":{"objectClass":"MindNode","ID":"UL135","lineColorHex":"#37C45A","text":"11、switch 是否能作用在byte 上，是否能作用在long 上，是否能作用在String上？","remark":"java7 开始，switch支持： 'char, byte, short, int, Character, Byte, Short, Integer, String, or an enum'"},"6":{"objectClass":"MindNode","ID":"56922","lineColorHex":"#37C45A","text":"12、用最有效率的方法计算2乘以8？"},"7":{"objectClass":"MindNode","ID":"22XT8","lineColorHex":"#37C45A","text":"13、数组有没有length()方法？String有没有length()方法？"},"8":{"objectClass":"MindNode","ID":"NLBU6","lineColorHex":"#37C45A","text":"20、重载（Overload）和重写（Override）的区别。重载的方法能否根据返回类型进行区分？"},"9":{"objectClass":"MindNode","ID":"Y17ES","lineColorHex":"#37C45A","text":"22、char 型变量中能不能存贮一个中文汉字，为什么？","remark":"char是按照字符存储的，不管英文还是中文，固定占用占用2个字节，用来储存Unicode字符。\n范围在0-65536。\nunicode编码字符集中包含了汉字，所以，char型变量中可以存储汉字。"},"10":{"objectClass":"MindNode","ID":"782ET","lineColorHex":"#37C45A","text":"36、Java 中的final关键字有哪些用法？"},"11":{"objectClass":"MindNode","ID":"7M0T5","lineColorHex":"#37C45A","text":"44、什么时候用断言（assert）？","remark":"测试代码的时候用"},"12":{"objectClass":"MindNode","ID":"6T45O","lineColorHex":"#37C45A","children":{"0":{"objectClass":"MindNode","ID":"GW64Y","lineColorHex":"#37C45A","text":"异常实例的构造？异常表？finally 为啥总是会执行？","remark":"https://blog.csdn.net/qq_41212104/article/details/85232330"},"objectClass":"NSArray"},"text":"45、Error、Exception、Throwable有什么区别？"},"13":{"objectClass":"MindNode","ID":"G1WMA","lineColorHex":"#37C45A","text":"46、try{}里有一个return语句，那么紧跟在这个try后的finally{}里的代码会不会被执行，什么时候被执行，在return前还是后?","remark":"finaly的return 优先级最高，先执行"},"14":{"objectClass":"MindNode","ID":"IE1CJ","lineColorHex":"#37C45A","text":"47、Java语言如何进行异常处理，关键字：throws、throw、try、catch、finally分别如何使用？\n"},"15":{"objectClass":"MindNode","ID":"609O2","lineColorHex":"#37C45A","text":"50、阐述final、finally、finalize的区别。\n"},"16":{"objectClass":"MindNode","ID":"R4P7L","lineColorHex":"#37C45A","text":"68、Java中如何实现序列化，有什么意义？","remark":"https://juejin.im/post/6844903848167866375"},"17":{"objectClass":"MindNode","ID":"8OT7O","lineColorHex":"#37C45A","text":"69、Java中有几种类型的流？","remark":"https://ca3tie1.github.io/post/java-io-tips/"},"18":{"objectClass":"MindNode","ID":"YMPQO","lineColorHex":"#37C45A","children":{"0":{"objectClass":"MindNode","ID":"Y3N66","lineColorHex":"#37C45A","text":"wait,notify,notifyAll"},"1":{"objectClass":"MindNode","ID":"QPW58","lineColorHex":"#37C45A","text":"hashCode,toString,finalize"},"objectClass":"NSArray"},"text":"4. Object有哪些公用方法？"},"19":{"objectClass":"MindNode","ID":"5228I","lineColorHex":"#37C45A","text":"5. Java的四种引用，强弱软虚，用到的场景。"},"20":{"objectClass":"MindNode","ID":"E8U74","lineColorHex":"#37C45A","text":"6. Hashcode的作用。"},"21":{"objectClass":"MindNode","ID":"15O4E","lineColorHex":"#37C45A","text":"29. foreach与正常for循环效率对比。"},"22":{"objectClass":"MindNode","ID":"9F2WM","lineColorHex":"#37C45A","text":"32. 泛型常用特点，List<String>能否转为List<Object>。","remark":"https://juejin.im/post/6844903650788114439"},"23":{"objectClass":"MindNode","ID":"88000","lineColorHex":"#37C45A","text":"37. JNI的使用。"},"24":{"objectClass":"MindNode","ID":"IT1EG","lineColorHex":"#B3EE3A","text":"HashMap, Hashtable的区别？"},"25":{"objectClass":"MindNode","ID":"61H5A","lineColorHex":"#37C45A","text":"Arrays.sort实现原理和Collection实现原理","remark":"https://github.com/loyal888/Note/blob/master/%E5%AD%A6%E4%B9%A0%E7%AC%94%E8%AE%B0/%E7%AE%97%E6%B3%95/%E6%8E%92%E5%BA%8F%E7%AE%97%E6%B3%95.md"},"26":{"objectClass":"MindNode","ID":"K3QB3","lineColorHex":"#37C45A","children":{"0":{"objectClass":"MindNode","ID":"4391J","lineColorHex":"#37C45A","text":"java动态代理","remark":"基于接口代理，首先创建自己的InvocationHandler实现InvocationHandler的invoke方法，在invoke方法中调用被代理对象的接口方法；\n\n创建动态代理对象：通过 Proxy.newProxyInstance() 方法来动态创建对象。通过生成的代理类发现，该代理类实现了接口中的方法，并在接口的实现中调用了InvocationHandler的invoke方法，这样就把我们需动态代理的内容注入进去了。\n\n链接：https://xie.infoq.cn/article/9a9387805a496e1485dc8430f"},"1":{"objectClass":"MindNode","ID":"S5637","lineColorHex":"#37C45A","text":"ASM"},"objectClass":"NSArray"},"text":"动态代理的几种方式"},"27":{"objectClass":"MindNode","ID":"W6NDR","lineColorHex":"#37C45A","text":"问++i和i++区别","remark":"i++ ：先在i所在的表达式中使用i的当前值，后让i加1\n++i ：让i先加1，然后在i所在的表达式中使用i的新值"},"objectClass":"NSArray"},"text":"语法"},"1":{"objectClass":"MindNode","ID":"353VD","lineColorHex":"#DC306C","children":{"0":{"objectClass":"MindNode","ID":"1EG7E","lineColorHex":"#37C45A","children":{"0":{"objectClass":"MindNode","ID":"95257","lineColorHex":"#37C45A","text":"多态的实现方式","remark":"1. 从字节码中可以看到，调用的都是相同的方法invokevirtual #6; //Method DynamicDispatcher$Human.sayHello:()V ，但是执行的结果却显示调用了不同的方法。因为，在编译阶段，编译器只知道对象的静态类型，而不知道实际类型，所以在class文件中只能确定要调用父类的方法。但是在执行时却会判断对象的实际类型。如果实际类型实现这个方法，则直接调用，如果没有实现，则按照继承关系从下往上一次检索，只要检索到就调用，如果始终没有检索到，则抛异常"},"objectClass":"NSArray"},"text":"1、面向对象的特征有哪些方面？"},"1":{"objectClass":"MindNode","ID":"ISBIV","lineColorHex":"#37C45A","text":"85、获得一个类的类对象有哪些方式？","remark":"Object.getClass();\nObject.class;\nClass.forName();"},"2":{"objectClass":"MindNode","ID":"1BS26","lineColorHex":"#37C45A","text":"87、如何通过反射获取和设置对象私有字段的值？","remark":" Class<?> test = Class.forName(\"Test\");\n            Field instance = test.getDeclaredField(\"INSTANCE\");\n            Field i = test.getDeclaredField(\"i\");\n            instance.setAccessible(true);\n            Object obj = test.getDeclaredConstructor().newInstance();\n            instance.set(obj,obj);\n            i.set(obj,2);\n            Test t = (Test) obj;\n            System.out.println( (int)i.get(obj));"},"3":{"objectClass":"MindNode","ID":"64A7J","lineColorHex":"#37C45A","text":"88、如何通过反射调用对象的方法？"},"4":{"objectClass":"MindNode","ID":"KI1T4","lineColorHex":"#37C45A","text":"89、简述一下面向对象的\"六原则一法则\"。","remark":"https://juejin.cn/post/6844903910029656078"},"5":{"objectClass":"MindNode","ID":"43OKM","lineColorHex":"#37C45A","text":"91、用Java写一个单例类。","remark":"public class Singleton{   \n    // 静态属性，volatile保证可见性和禁止指令重排序\n    private volatile static Singleton instance = null; \n    // 私有化构造器  \n    private Singleton(){}   \n \n    public static  Singleton getInstance(){   \n        // 第一重检查锁定\n        if(instance==null){  \n            // 同步锁定代码块 \n            synchronized(Singleton.class){\n                // 第二重检查锁定\n                if(instance==null){\n                    // 注意：非原子操作\n                    instance=new Singleton(); \n                }\n            }              \n        }   \n        return instance;   \n    }   \n}"},"6":{"objectClass":"MindNode","ID":"85O00","lineColorHex":"#37C45A","text":"20. java多态的实现原理。","remark":"https://github.com/loyal888/Note/blob/master/%E5%AD%A6%E4%B9%A0%E7%AC%94%E8%AE%B0/%E9%9D%A2%E8%AF%95/JAVA/java%E6%96%B9%E6%B3%95%E8%B0%83%E7%94%A8%E4%B9%8B%E9%87%8D%E8%BD%BD%E3%80%81%E9%87%8D%E5%86%99%E7%9A%84%E8%B0%83%E7%94%A8%E5%8E%9F%E7%90%86%EF%BC%88%E4%B8%80%EF%BC%89.md"},"7":{"objectClass":"MindNode","ID":"W197A","lineColorHex":"#37C45A","text":"21. 实现多线程的几种方法","remark":"https://juejin.cn/post/6844904078728757261\n\nhttps://juejin.cn/post/6844904078728757261"},"objectClass":"NSArray"},"text":"面向对象"},"2":{"objectClass":"MindNode","ID":"9URSL","lineColorHex":"#836FFF","children":{"0":{"objectClass":"MindNode","ID":"97RIE","lineColorHex":"#37C45A","text":"24、静态嵌套类(Static Nested Class)和内部类（Inner Class）的不同？"},"1":{"objectClass":"MindNode","ID":"868Z0","lineColorHex":"#37C45A","text":"34、Anonymous Inner Class(匿名内部类)是否可以继承其它类？是否可以实现接口？","remark":"单继承，单实现"},"2":{"objectClass":"MindNode","ID":"0B16K","lineColorHex":"#37C45A","children":{"0":{"objectClass":"MindNode","ID":"M5KES","lineColorHex":"#37C45A","children":{"0":{"objectClass":"MindNode","ID":"R4VJ5","lineColorHex":"#37C45A","text":"无限制，因为包含对外部类的引用"},"objectClass":"NSArray"},"text":"成员内部类"},"1":{"objectClass":"MindNode","ID":"Y76TC","lineColorHex":"#37C45A","children":{"0":{"objectClass":"MindNode","ID":"MKOQ8","lineColorHex":"#37C45A","text":"final限制"},"objectClass":"NSArray"},"text":"匿名内部类"},"2":{"objectClass":"MindNode","ID":"VC5DT","lineColorHex":"#37C45A","children":{"0":{"objectClass":"MindNode","ID":"36F55","lineColorHex":"#37C45A","text":"不能访问非静态成员变量"},"objectClass":"NSArray"},"text":"静态内部类"},"objectClass":"NSArray"},"text":"35、内部类可以引用它的包含类（外部类）的成员吗？有没有什么限制？"},"3":{"objectClass":"MindNode","ID":"MZ6RJ","lineColorHex":"#37C45A","text":" 类是什么时候被初始化的？","remark":"https://blog.csdn.net/w1196726224/article/details/56529615"},"4":{"objectClass":"MindNode","ID":"IU5Z0","lineColorHex":"#37C45A","text":"泛型擦除怎么理解？泛型的 PECS 原则如何理解"},"objectClass":"NSArray"},"text":"类"},"3":{"objectClass":"MindNode","ID":"601O8","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"H1PHV","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"FS7KT","lineColorHex":"#26BBFF","text":"ThreadLocal 的适用于什么场景？"},"1":{"objectClass":"MindNode","ID":"34GZ2","lineColorHex":"#26BBFF","text":"ThreadLocal 的使用方式是怎样的？"},"2":{"objectClass":"MindNode","ID":"QQJH6","lineColorHex":"#26BBFF","text":"ThreadLocal 的实现原理怎样的？"},"objectClass":"NSArray"},"text":"ThreadLocal？"},"1":{"objectClass":"MindNode","ID":"VOEBX","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"E1K02","lineColorHex":"#26BBFF","text":"对Java内存模型的理解，以及其在并发中的应用"},"1":{"objectClass":"MindNode","ID":"Q3NV2","lineColorHex":"#26BBFF","text":"指令重排序，内存栅栏等"},"2":{"objectClass":"MindNode","ID":"D5CL3","lineColorHex":"#26BBFF","text":"volatile的语义，它修饰的变量一定线程安全吗"},"3":{"objectClass":"MindNode","ID":"B51RL","lineColorHex":"#26BBFF","text":"保证内存可见性？"},"objectClass":"NSArray"},"text":"内存模型"},"2":{"objectClass":"MindNode","ID":"8341X","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"K5K5Z","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"91V8U","lineColorHex":"#26BBFF","text":"简单说说你了解的类加载器，可以打破双亲委派么，怎么打破。"},"objectClass":"NSArray"},"text":"深入分析了Classloader，双亲委派机制"},"objectClass":"NSArray"},"text":"双亲委派模型"},"3":{"objectClass":"MindNode","ID":"S7561","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"580YB","lineColorHex":"#26BBFF","text":"Java 8的内存分代改进"},"1":{"objectClass":"MindNode","ID":"6WH17","lineColorHex":"#26BBFF","text":"2. 堆里面的分区：Eden，survival from to，老年代，各自的特点。"},"2":{"objectClass":"MindNode","ID":"RV2H1","lineColorHex":"#26BBFF","text":"9、解释内存中的栈(stack)、堆(heap)和方法区(method area)的用法"},"3":{"objectClass":"MindNode","ID":"QEVEF","lineColorHex":"#26BBFF","text":"新生代和老生代的内存回收策略"},"4":{"objectClass":"MindNode","ID":"65IY6","lineColorHex":"#26BBFF","text":"Eden和Survivor的比例分配等"},"objectClass":"NSArray"},"text":"分代"},"4":{"objectClass":"MindNode","ID":"QQ2EO","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"Q1566","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"68B61","lineColorHex":"#26BBFF","text":"可用于计数器的几种对象"},"objectClass":"NSArray"},"text":"4. GC的两种判定方法：引用计数与引用链。"},"1":{"objectClass":"MindNode","ID":"OR831","lineColorHex":"#26BBFF","text":"5. GC的三种收集方法：标记清除、标记整理、复制算法的原理与特点，分别用在什么地方，如果让你优化收集方法，有什么思路？"},"2":{"objectClass":"MindNode","ID":"3S2A3","lineColorHex":"#26BBFF","text":"7. Minor GC与Full GC分别在什么时候发生？"},"3":{"objectClass":"MindNode","ID":"SWN7O","lineColorHex":"#26BBFF","text":"6. GC收集器有哪些？CMS收集器与G1收集器的特点。"},"4":{"objectClass":"MindNode","ID":"4ES78","lineColorHex":"#26BBFF","text":"30、GC是什么？为什么要有GC？"},"5":{"objectClass":"MindNode","ID":"62W10","lineColorHex":"#26BBFF","text":"你知道哪几种垃圾收集器，各自的优缺点，重点讲下cms，g1"},"6":{"objectClass":"MindNode","ID":"290XU","lineColorHex":"#26BBFF","text":"说一下强引用、软引用、弱引用、虚引用以及他们之间和gc的关系"},"objectClass":"NSArray"},"text":"GC"},"5":{"objectClass":"MindNode","ID":"J2FP5","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"TUBQY","lineColorHex":"#26BBFF","text":"9. 类加载的五个过程：加载、验证、准备、解析、初始化。"},"1":{"objectClass":"MindNode","ID":"63RO6","lineColorHex":"#26BBFF","text":"类的实例化顺序，比如父类静态数据，构造函数，字段，子类静态数据，构造函数，字段，它们的执行顺序"},"2":{"objectClass":"MindNode","ID":"V3H0S","lineColorHex":"#26BBFF","text":"3. 对象创建方法，对象的内存分配，对象的访问定位。"},"3":{"objectClass":"MindNode","ID":"OYUAS","lineColorHex":"#26BBFF","text":"21、描述一下JVM加载class文件的原理机制？"},"4":{"objectClass":"MindNode","ID":"71438","lineColorHex":"#26BBFF","text":"类加载机制问的也不少，除了 Java 中的，还可以说一下 Android 中的 DexClassLoader，Android 8 的改动？然后就可以引申到了插件化和热修复了。"},"objectClass":"NSArray"},"text":"类"},"6":{"objectClass":"MindNode","ID":"0XWMC","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"5CE6M","lineColorHex":"#26BBFF","text":"OOM错误，stackoverflow错误，permgen space错误"},"objectClass":"NSArray"},"text":"错误"},"7":{"objectClass":"MindNode","ID":"R78L7","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"7CK80","lineColorHex":"#26BBFF","text":"Java虚拟机中，数据类型可以分为哪几类？"},"1":{"objectClass":"MindNode","ID":"WOXA4","lineColorHex":"#26BBFF","text":"怎么理解栈、堆？堆中存什么？栈中存什么？"},"2":{"objectClass":"MindNode","ID":"CU37W","lineColorHex":"#26BBFF","text":"为什么要把堆和栈区分出来呢？栈中不是也可以存储数据吗？"},"3":{"objectClass":"MindNode","ID":"28350","lineColorHex":"#26BBFF","text":"在Java中，什么是是栈的起始点，同是也是程序的起始点？"},"4":{"objectClass":"MindNode","ID":"RJ88L","lineColorHex":"#26BBFF","text":"为什么不把基本类型放堆中呢？"},"5":{"objectClass":"MindNode","ID":"D7458","lineColorHex":"#26BBFF","text":"一个空Object对象的占多大空间？"},"objectClass":"NSArray"},"text":"数据类型"},"objectClass":"NSArray"},"text":"JVM"},"4":{"objectClass":"MindNode","ID":"6XNPG","lineColorHex":"#A4D3EE","children":{"0":{"objectClass":"MindNode","ID":"37697","lineColorHex":"#A4D3EE","text":"3、String 是最基本的数据类型吗？"},"1":{"objectClass":"MindNode","ID":"PH7MB","lineColorHex":"#A4D3EE","text":"17、是否可以继承String类？"},"2":{"objectClass":"MindNode","ID":"4E776","lineColorHex":"#A4D3EE","text":"19、String和StringBuilder、StringBuffer的区别？"},"3":{"objectClass":"MindNode","ID":"4DRVO","lineColorHex":"#A4D3EE","text":"31、String s = new String(\"xyz\");创建了几个字符串对象？"},"objectClass":"NSArray"},"text":"String"},"5":{"objectClass":"MindNode","ID":"T2VXD","lineColorHex":"#8B6914","children":{"0":{"objectClass":"MindNode","ID":"6ZU16","lineColorHex":"#8B6914","text":"52、List、Set、Map是否继承自Collection接口？"},"1":{"objectClass":"MindNode","ID":"IG7M4","lineColorHex":"#8B6914","text":"53、阐述ArrayList、Vector、LinkedList的存储性能和特性。"},"2":{"objectClass":"MindNode","ID":"73DCC","lineColorHex":"#8B6914","text":"54、Collection和Collections的区别？"},"3":{"objectClass":"MindNode","ID":"T79UO","lineColorHex":"#8B6914","text":"55、List、Map、Set三个接口存取元素时，各有什么特点？"},"4":{"objectClass":"MindNode","ID":"SQ4R7","lineColorHex":"#8B6914","text":"56、TreeMap和TreeSet在排序时如何比较元素？Collections工具类中的sort()方法如何比较元素？"},"5":{"objectClass":"MindNode","ID":"J255O","lineColorHex":"#8B6914","children":{"0":{"objectClass":"MindNode","ID":"98Y76","lineColorHex":"#8B6914","text":"arraylist和linkedlist区别及实现原理"},"objectClass":"NSArray"},"text":"7. ArrayList、LinkedList、Vector的区别。"},"6":{"objectClass":"MindNode","ID":"WD540","lineColorHex":"#8B6914","text":"9. Map、Set、List、Queue、Stack的特点与用法。"},"7":{"objectClass":"MindNode","ID":"81165","lineColorHex":"#8B6914","text":"12. TreeMap、HashMap、LindedHashMap的区别。"},"8":{"objectClass":"MindNode","ID":"21GV9","lineColorHex":"#8B6914","children":{"0":{"objectClass":"MindNode","ID":"4F825","lineColorHex":"#8B6914","text":"OOM问题和StackOverflow有什么区别"},"objectClass":"NSArray"},"text":"15. Excption与Error包结构。OOM你遇到过哪些情况，SOF你遇到过哪些情况。"},"9":{"objectClass":"MindNode","ID":"45III","lineColorHex":"#8B6914","text":"HashMap的并发问题"},"10":{"objectClass":"MindNode","ID":"D03HC","lineColorHex":"#8B6914","children":{"0":{"objectClass":"MindNode","ID":"8783I","lineColorHex":"#8B6914","text":"了解LinkedHashMap的应用吗"},"1":{"objectClass":"MindNode","ID":"DD3M8","lineColorHex":"#8B6914","text":"10. HashMap和HashTable的区别。"},"2":{"objectClass":"MindNode","ID":"5F6W1","lineColorHex":"#8B6914","children":{"0":{"objectClass":"MindNode","ID":"5R42W","lineColorHex":"#8B6914","text":"concurrenthashmap具体实现及其原理，jdk8下的改版"},"objectClass":"NSArray"},"text":"11. HashMap和ConcurrentHashMap的区别，HashMap的底层源码。"},"3":{"objectClass":"MindNode","ID":"7612Z","lineColorHex":"#8B6914","text":"hash碰撞怎么解决？"},"4":{"objectClass":"MindNode","ID":"NXX1Q","lineColorHex":"#8B6914","text":"HashMap数据存储结构? key重复了怎么办?是如何解决的?"},"5":{"objectClass":"MindNode","ID":"BJV7I","lineColorHex":"#8B6914","text":"为什么用红黑树、红黑树邻接点为啥是8 ？"},"6":{"objectClass":"MindNode","ID":"5DW01","lineColorHex":"#8B6914","text":"扩容和内存机制"},"7":{"objectClass":"MindNode","ID":"C5267","lineColorHex":"#8B6914","text":"负载因子为什么是 0.75，为什么链表长度的边界值是 8，取索引的过程？非线程安全，所以就牵扯到了 ConcurrentHashmap、然后又牵扯到 CAS "},"objectClass":"NSArray"},"text":"HashMap"},"11":{"objectClass":"MindNode","ID":"7P16W","lineColorHex":"#8B6914","text":"Collections.sort底层排序方式？"},"12":{"objectClass":"MindNode","ID":"54BFM","lineColorHex":"#8B6914","text":"排序稳定性？"},"13":{"objectClass":"MindNode","ID":"YLOI9","lineColorHex":"#8B6914","text":"具体场景的排序策略？"},"objectClass":"NSArray"},"text":"集合"},"6":{"objectClass":"MindNode","ID":"TJKLE","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"XGJLS","lineColorHex":"#26BBFF","text":"59、当一个线程进入一个对象的synchronized方法A之后，其它线程是否可进入此对象的synchronized方法B？"},"1":{"objectClass":"MindNode","ID":"EICJX","lineColorHex":"#26BBFF","text":"58、线程的sleep()方法和yield()方法有什么区别？"},"2":{"objectClass":"MindNode","ID":"728RO","lineColorHex":"#26BBFF","text":"57、Thread类的sleep()方法和对象的wait()方法都可以让线程暂停执行，它们有什么区别?"},"3":{"objectClass":"MindNode","ID":"34731","lineColorHex":"#26BBFF","text":"60、请说出与线程同步以及线程调度相关的方法。"},"4":{"objectClass":"MindNode","ID":"FA54G","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"56XI7","lineColorHex":"#26BBFF","text":"sychronized 和 reentrantlock 实现原理"},"1":{"objectClass":"MindNode","ID":"63E57","lineColorHex":"#26BBFF","text":"volatile原理"},"objectClass":"NSArray"},"text":"62、synchronized关键字的用法？"},"5":{"objectClass":"MindNode","ID":"ZV80G","lineColorHex":"#26BBFF","text":"65、什么是线程池（thread pool）？线程池的好处"},"6":{"objectClass":"MindNode","ID":"R75HO","lineColorHex":"#26BBFF","text":"67、简述synchronized 和java.util.concurrent.locks.Lock的异同？"},"7":{"objectClass":"MindNode","ID":"7433R","lineColorHex":"#26BBFF","text":"22. 线程同步的方法：sychronized、lock、reentrantLock等。"},"8":{"objectClass":"MindNode","ID":"QY6X0","lineColorHex":"#26BBFF","text":"26. ThreadPool用法与优势。"},"9":{"objectClass":"MindNode","ID":"786FB","lineColorHex":"#26BBFF","text":"27. Concurrent包里的其他东西：ArrayBlockingQueue、CountDownLatch等等。"},"10":{"objectClass":"MindNode","ID":"GR6DT","lineColorHex":"#26BBFF","text":"28. wait()和sleep()的区别。"},"11":{"objectClass":"MindNode","ID":"JN3IV","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"GBVIL","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"DV8CI","lineColorHex":"#26BBFF","text":"乐观锁&悲观锁？"},"objectClass":"NSArray"},"text":"锁的种类"},"1":{"objectClass":"MindNode","ID":"H6C5P","lineColorHex":"#26BBFF","text":"23. 锁的等级：方法锁、对象锁、类锁。"},"2":{"objectClass":"MindNode","ID":"CIEOT","lineColorHex":"#26BBFF","text":"锁的机制升降级。"},"3":{"objectClass":"MindNode","ID":"DPK3F","lineColorHex":"#26BBFF","text":"对象锁和类锁是否会互相影响，会举例子让你判断锁的使用是否恰当，并说出原因。"},"objectClass":"NSArray"},"text":"锁"},"12":{"objectClass":"MindNode","ID":"3V415","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"B7433","lineColorHex":"#26BBFF","text":"分析线程池的实现原理和线程的调度过程"},"1":{"objectClass":"MindNode","ID":"3U1D2","lineColorHex":"#26BBFF","text":"线程池的种类，区别和使用场景"},"2":{"objectClass":"MindNode","ID":"Y4017","lineColorHex":"#26BBFF","text":"线程池如何调优"},"3":{"objectClass":"MindNode","ID":"M56YG","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"LJ38N","lineColorHex":"#26BBFF","text":"线程池中的几种重要的参数及流程说明。"},"objectClass":"NSArray"},"text":"使用线程池的原因？"},"4":{"objectClass":"MindNode","ID":"JCIW2","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"GO8NW","lineColorHex":"#26BBFF","text":"怎么理解无界队列和有界队列？"},"objectClass":"NSArray"},"text":"线程池都有哪几种工作队列？"},"objectClass":"NSArray"},"text":"线程池"},"13":{"objectClass":"MindNode","ID":"V69FN","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"EI4EW","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"U1HI7","lineColorHex":"#26BBFF","text":"ThreadLocalMap中，key和value分别哪个是强引用，哪个是弱引用"},"objectClass":"NSArray"},"text":"ThreadLocal用过么，原理是什么，用的时候要注意什么"},"1":{"objectClass":"MindNode","ID":"E818F","lineColorHex":"#26BBFF","text":"Synchronized和Lock的区别"},"2":{"objectClass":"MindNode","ID":"ODRFO","lineColorHex":"#26BBFF","text":"用过哪些原子类，他们的参数以及原理是什么"},"3":{"objectClass":"MindNode","ID":"20F44","lineColorHex":"#26BBFF","text":"cas是什么，它会产生什么问题（ABA问题的解决，如加入修改次数、版本号）"},"4":{"objectClass":"MindNode","ID":"48GM4","lineColorHex":"#26BBFF","text":"如果让你实现一个并发安全的链表，你会怎么做"},"5":{"objectClass":"MindNode","ID":"E5M7P","lineColorHex":"#26BBFF","text":"简述ConcurrentLinkedQueue和LinkedBlockingQueue的用处和不同之处"},"6":{"objectClass":"MindNode","ID":"2VFQX","lineColorHex":"#26BBFF","text":"简述AQS的实现原理"},"7":{"objectClass":"MindNode","ID":"1MIV5","lineColorHex":"#26BBFF","text":"countdowlatch和cyclicbarrier的用法，以及相互之间的差别?\n"},"8":{"objectClass":"MindNode","ID":"63026","lineColorHex":"#26BBFF","text":"分段锁的原理,锁力度减小的思考"},"9":{"objectClass":"MindNode","ID":"1B7T1","lineColorHex":"#26BBFF","text":"常用的多线程工具类。blockingqueue ，concurrenthashmap，信号量，countdownlatch，cyclicbarrier，exchanger等，stringbuffer"},"10":{"objectClass":"MindNode","ID":"4ENK1","lineColorHex":"#26BBFF","text":"阻塞队列不用java提供的自己怎么实现，condition和wait不能用"},"objectClass":"NSArray"},"text":"并发"},"objectClass":"NSArray"},"text":"线程"},"7":{"objectClass":"MindNode","ID":"5M35L","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"JXS2S","lineColorHex":"#26BBFF","text":"cloneable接口实现原理，浅拷贝or深拷贝？"},"1":{"objectClass":"MindNode","ID":"E2HGH","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"C28IP","lineColorHex":"#26BBFF","text":"反射的原理，反射创建类实例的三种方式是什么？"},"1":{"objectClass":"MindNode","ID":"53708","lineColorHex":"#26BBFF","text":"反射中，Class.forName和ClassLoader区别"},"2":{"objectClass":"MindNode","ID":"481KJ","lineColorHex":"#26BBFF","text":"synchronized 的原理，什么是自旋锁，偏向锁，轻量级锁，什么叫可重入锁，什么叫公平锁和非公平锁"},"3":{"objectClass":"MindNode","ID":"35272","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"O372N","lineColorHex":"#26BBFF","text":""},"1":{"objectClass":"MindNode","ID":"NGJ50","lineColorHex":"#26BBFF","text":"反射的性能损耗在哪，怎么优化？"},"objectClass":"NSArray"},"text":"反射机制会不会有性能问题？"},"4":{"objectClass":"MindNode","ID":"K0936","lineColorHex":"#26BBFF","text":"什么是反射机制？"},"5":{"objectClass":"MindNode","ID":"IW637","lineColorHex":"#26BBFF","text":"说说反射机制的作用。"},"objectClass":"NSArray"},"text":"反射"},"objectClass":"NSArray"},"text":"源码及相关原理"},"objectClass":"NSArray"},"text":"Java"},"objectClass":"NSArray"},"text":""},"ID":"O575R"}