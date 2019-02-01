### 写在前面的话

> 从2019年起准备系统地对使用R软件进行基础编程、数据分析和统计建模的内容进行总结和整理，并且对R语言的一些高级特性进行回顾（如闭包、泛函等），有时间会在github上陆续更新代码。
> 由于进度问题，R的内容不会像python那部分一样进行详细的注释，相关内容可通过阅读推荐读物进行学习。**推荐的读物会在末尾列出**

***

## 20190101—第一节：R的数据结构与帮助获取方法

1. 函数入门：重点掌握变量的作用域
    + 局部变量: **下周会在CSDN上更新一篇讲解R语言变量作用域的帖子**
    + 超赋值运算符: <<-
    + [R语言的闭包](https://blog.csdn.net/hdyshr/article/details/82744681)

2. R语言的数据结构
    + 向量：必须由相同类型数据组成
    + 字符串：后续学习会单独讲解字符串的细节
    + 矩阵
    + 列表：可以储存不同类型的数据
    + 数据框

3. R的泛型编程浅谈
    + summary()、plot()均为泛型函数，即一个函数族，根据不同的输入，可以从函数族中抽出适合的函数运行

3. R的帮助获取方法
    + help()
    + ?
    + example()
    + 模糊的功能查询：help.search()
    + ??

***

## 20190105——第二节：R的数据结构之向量

1. R向量与C语言（或其他ALGOL家族高级语言）中向量的区别
    + 向量名实际上是一个指针，向量创建后不可修改长度，若要修改只能重新复制
    + 遍历列表操作
    + ?seq()：学习seq()的用法
    + 向量加法的循环补齐规则

2.  常见的向量运算和索引
    + 二目运算符也是函数
    + R向量用“*”乘，获得新向量，而不是向量内积或外积
    + 多用()避免优先级错误
    + 用seq()生成等差数列（向量）
    + 用rep()生成循环数列（向量）
    + 用any(条件)和all(条件)对向量中的元素进行判断

3. 用R处理游程问题
    + 编程中如何减少内存消耗：避免头指针反复摆动
    + 累积和函数cumsum()

4. R中的缺失值NA和空值NULL
    + NA为缺失值：NA无法参与运算
    + NULL可以用来创建空指针：z <- NULL

5. R的筛选机制（filtering）
    + 用[条件]进行筛选
    + 用subset(向量名, 条件)进行筛选：可以避免NA的问题
    + 用which(条件)进行筛选

6. ifelse()函数的用法
    + 这个方法速度较快，因为进行的是纯向量化操作

> 补充：其他涉及的函数
> lapply(); diff(); sign(); identical(); 
> mode(); typeof()

***

## 20190106——第三节：R的矩阵和数组

1. 矩阵（二维）相关操作
     + 矩阵的基本操作
     + 用pixmap包处理灰度像素图
     + 对矩阵的行或列应用函数：apply()的用法
     + 矩阵拓展的方法：cbind()和rbind()的用法
     + 向量和矩阵的差异

2. 数组（多维）相关操作
     + 注意与python的numpy数组进行区分

## 20190201——第四节：前三节内容的复习

1. R的交互模式和批处理模式辨析

2. 在一个R脚本中调用外部R脚本代码可使用source("z.R") 

3. R中在pdf文件中绘图（并使用dev.off()关闭）

4. R的批处理命令：R CMD BATCH z.R

5. 超赋值运算符：<<- 用于在函数中给全局变量赋值

6. mode()和typeof()的区别：typeof() is more detailed

7. 矩阵乘法运算符：%*%

8. 显示S3对象的结构：str(S3对象) （short for structure）

9. class()的含义，并且与mode()和typeof()比较：class()用于判断对象的类型

10. attributes(对象)：列出一个对象的所有组件
           
#### 参考读物(精华型图书)
> 下列图书并不很适合编程零基础的人士学习
1. 《R语言编程艺术》，Norman Matloff，机械工业出版社，2013.6。
2. 《数据科学：R语言实现》，Hadley Wickham & Garret Grolemund, 东南大学出版社。
3. 《高级R语言编程指南》，Hadley Wickham, 机械工业出版社。