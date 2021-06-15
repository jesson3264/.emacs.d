Emacs demo setup for C/C++ described here: http://tuhdo.github.io/c-ide.html


## 显示目录
M-x speedbar

## 

## 重新加载配置

不重启 Emacs 让新修改的配置内容生效，有四个函数可以做到：

    M-x eval-last-sexp 使当前 elisp 配置中光标前的那一条语句立刻生效；
    M-x eval-region 使当前 elisp 配置中选中的 region 中的语句立刻生效；
    M-x eval-buffer 使当前的 buffer 中的设置语句立刻生效；
    M-x load-file ~/.emacs 载入 .emacs 文件，从而使其中的设置生效，要生效其它 elisp 文件只需要把 .emacs 文件名换成其它的即可。

    **命令说明：**
```
C-x  ->      Ctrl+x
M-x  ->      Alt + x （windows）Meta+x (mac os)
C-x  C-f     先同时按  Ctrl+x 再同时按 Ctrl+f， 你也可以一直按着 Ctrl，再先按x, 再按 f
```

**文件操作类**
 ```
C-x  C-f  打开文件
C-x  C-s  保存当前buffer到文件
C-x  C-c  关闭 emacs
```

**Buffer类**
```
C-x  C-b      显示buffer列表
C-x  b        切换 buffer
C-x  k        关闭当前buffer   (kill)
```
**窗口类**
```
C-x  0      关闭当前窗口
C-x  1      关闭其他窗口
C-x  2      水平分割窗格
C-x  3      垂直分割窗格
C-x  o      切换窗口      (字母o)
C-x  5 2    新建窗口
C-x  5  f   新窗口中打开文件
```
**光标移动类**
```
C-a      行首  ahead
C-e      行尾  end
C-f      前进一个字符  forward
C-b      后退一个字符
C-p      上一行  previous
C-n      下一行  next 
M-f      前进一个单词
M-b      后退一个单词
C-v      下翻一页
M-v      上翻一页
M-<      文件头
M->      文件尾
```
**编辑命令**
```
C-space      设置开始标记    space  空格键
M-w          复制标记区内容  
C-y          粘贴
M-u          使光标处的单词大写
M-l          使光标处的单词小写
M-c          使光标处单词首字母大写
C-k          删除一行

当要复制一段字符到其他地方时，可以先标记起点，然后按普通方式移动光标选中所有你要复制的内容，再 M-w ，最后移动到你要粘贴的位置，C-y。
```
**搜索**
搜索也经常用到，尤其是项目文件比较大时。
```
下面的操作都是先按 C-s 或者 C-r 后， 进入 Incremental Search Mode 之后的操作。

C-r , C-s ， 分别是向前查找和向后查找当前输入的内容。
如果当前内容是空的，也就是说你连续两次输入 C-s ，那么就是 “查找下一个 (Find next)”的 操作。第一次是C-s 把你带入了 Incremental Search Mode ， 第二次的 C-s 表示查找上一次查 过的东西。 C-r 类似，只不过方向相反。

C-w 查找光标除所在的单词
    例如， 你可以输入 C-r 然后马上输入 C-w ， 光标所在位置的单词就自动变成了要查找的内容。
    多次输入 C-w 后面的单词就会一个一个 的变成了查找内容一部分。

C-w 还可以和上面介绍的 C-s C-r 配合使用。C-s 进入 Incremental Search Mode. 然后输入 void f 然后光标会停留在一个 void f 的单词上，也许是 void far ，然后用 C-s 或者 C-r 找 到某个 void f 的地方，然后 C-w 就可以把 f 后面的单词补全了。

C-y 把光标所在位置到行尾的部分作为查找内容
    和 C-w 类似，只不过输入的不是一个单词， 而是整整一行。

M-y 把 kill ring 中的东西输入为当前要查找的内容
M-c 切换大小写敏感。
M-r 切换是普通查找还是正则表达式查找。
M-e 编辑要查找的内容
Incremental Search 会随着用户的输入不断的改变光标的位置，有的时候很讨厌，那么就可以 M-e 编辑要查找的内容，然后按 Enter 回到 Incremetal Search 。

M-n M-p 浏览查找历史纪录
    可以查找以前 查找过的内容。

C-q C-j 查找多行文字。
    如果你要的查找的内容是多行文字，也就是说，查找内容中含有换行字符 C-j 但是， Enter 键又 作为结束查找的操作，一按 Enter 就退出了查找模式了。那么 C-q C-j 可以解决这个问题。 

```

**撤销**
```
C-x u  撤销  
```

我的配置：
https://github.com/jxdeng3989/.emacs.d.git

git clone https://github.com/jxdeng3989/.emacs.d.git  ~/.emacs.d 

原作者：https://github.com/tuhdo/emacs-c-ide-demo

Guid File: http://tuhdo.github.io/c-ide.html

