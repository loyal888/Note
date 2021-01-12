
Android 数据绑定库示例
1.https://github.com/android/databinding-samples

实现DataBinding字段绑定有两种方式

- 1. 使用可观察字段

```java
public class ObservableInt extends BaseObservableField implements Parcelable, Serializable {}
```

- 2.使用ViewModel+LiveData
