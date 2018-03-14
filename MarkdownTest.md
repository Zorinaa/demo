
特殊字符：
　 起始标签&lt;和标记HTML实体&amp;，如果只是想显示这两个字符，必须要使用对应的实体形式；
　 markdown会对特殊字符做处理，如果特殊字符用于实体，则保留，否则，会自动转换为对应实体；
　 Code范围内，不管是行内还是区块，都会被转换成HTML实体，便于用Markdown写HTML Code;
 
特殊符号(需要加入反斜线\进行输入)：
\\   \* \_ \{} \[] \() \# \+ \- \. \!
 \`反引号
 
语法：
1.标题
　有两种语法，类Setext和类atx形式；
　类Setex形式是用底线对形式，=高阶标题，-第二阶标题。任何数量对=、-都有效果

This is an H1
=
This is an H2
-

　类atx形式是在行首加入1-6个#和一个空格，对应1-6阶标题

# 这是H1

## 这是H2


2.区块引用
　\>和空格，在段落的每一行最前面加，也可以在整个段落第一行加一个就可以了；结束时换行。

>This is a quote
>line 2
>line 3

　区块引用可以嵌套使用，

>This is the first level of quoting.
> 
> >This is nested blockquote.
>  
>  back to the first level.

3.强调
　强调有斜体，加粗以及加粗斜体；
　将文字两端加\*或者\_进行斜体文字的设置；

　*斜体*

　将文字两端加\*\*或者\_\_进行粗体文字的设置；

　__粗体__

　左右各三个\*或者\_进行加粗斜体文字的设置。

　***加粗斜体***

4.列表
　Markdown支持有序列表和无序列表；
　有序列表则使用数字接着一个英文句点：

1. This is line 1;
2. This is line 2;
3. This is line3;

　无序列表使用星号、加号或是减号作为列表标记

+ This is line 1;
- This is line 2;
* This is line3;

5.分割线
　一行中用三个或以上的星号、减号、下划线来建立一个分割线，行内不能有其他东西，也可以在星号或减号中间插入空格。

***
- - -

6.链接
　Markdown支持两种链接语法：行内式和参考式；
　行内格式：
\[Text\]\(http://www.baidu.com "Title"\)

[Text](http://www.baidu.com "Title")

　参考格式：
\[Text\]\[id\]

\[id\]:http://www.baidu.com "Title"


[1]:http://www.baidu.com "Title"
[百度][1]

关于markdown的语法有可以参考这三篇文章，oflyhigh的[《使用Markdown来让你的文章更易于阅读、更美观》][1] 和lemoojiang的[《图文编辑三板斧》][2] ，还有 carinewhy的[《新手教學-在steemit内改變圖片大小和圖片排位的方法》][3]。

[1]: https://steemit.com/cn/@oflyhigh/markdown"Title"

[2]: https://steemit.com/cn/@lemooljiang/4mddsq"Title"

[3]: https://steemit.com/cn-tutorial/@carinewhy/625apt-steemit"Title"

7.删除线
　文字两端加~~进行文字删除线的设置。

~~删除线~~




　






 


> Written with [StackEdit] (https://stackedit.io/).
