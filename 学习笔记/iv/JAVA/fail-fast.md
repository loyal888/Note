# 快速失败
当Map、List的结构在遍历的时候，发生remove、put方法，造成结构的改变，就触发快速失败，
抛出`ConcurrentModificationException.`

## 原理
 ```java 
public T next() {
            if (modCount != expectedModCount)
                throw new ConcurrentModificationException();
            return nextElement();
        }
```

`modCount`:结构发生改变时加1

`expectedModCount`:遍历时保存的局部变量值。

- 在迭代器取下一个值之前，判断modCount是否等于expectedModCount，当modCount不等于expectedModCount，就说明结构被更改，抛出异常，快速失败！