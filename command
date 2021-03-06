# command 

## 文件
- `:e`                       " <filename> 打开名为 filename 的文件，若文件不存在则创建之
- `:Ex`                      " 在 Vim 中打开目录树，光标选中后回车打开对应文件（提示：`-` 进入上级目录）
- `:buffers`, `:ls`          " 查看当前 Vim session 的文件历史记录
- `:bn`                      " 打开缓存中下一个文件
- `:bp`                      " 打开缓存中上一个文件
- `:b<N>`                    " 打开缓存中第 N 个文件
- `:bdelete<N>`              " 来删除所要关闭的缓冲区，缩写 `:bd<N>`
- `:w`                       " 保存当前文件
- `:wa`                      " 保存全部文件
- `:wq`,`ZZ`                 " 保存并退出
- `:q!`,`ZQ`                 " 强制退出，不保存
- `:q`                       " 关闭（已保存）
- `:qa`                      " 退出所有的文件
- `:saveas <new filename>`   " 文件另存为
- `:w <new filename>`        " 文件另存一份名为 `<new filename>` 的副本并继续编辑原文件
! 在 Vim 就是有强制的意思，但是最后能不能保存成功还是要看当前用户对应该文件的权限，所以在 Linux 上编辑文件尽量使用 sudo 打开文件
:w!
:w ! sudo tee %

另存为
看到这个名称你肯定很熟悉，任何编辑器左上角打开“编辑”按钮都会有这个功能，Vim 的要更方便一点，在保存的后边跟上新文件名即可

:w newfilename
你也可以只保存某几行数据到新文件，比如 1 到 10 行
:1, 10 w newfilename
想要追加文件需要加上 >>
:1, 10 w >> filename
写入另一个文件的内容

如果你在写作的时候，需要将另一个文件的内容直接引用到当前文件，可以试试这个功能

:r filename
然后目标内容就会粘贴到当前光标一下的位置，你可以指定它追加到某一行的下面。
:2 r filename

暂时离开 Vim
假如你想要写入另一个文件的内容，但是忘记了文件名，但是又不想退出文件怎么办，我们有办法可以暂时离开 Vim 环境来执行 shell 命令。
:! ls
随后你会看到执行命令的结果，然后回车即可返回 Vim，前期我们借助不到插件的帮忙时，这个功能是非常有用的，不过它只能执行非常基础的命令，ll 都会报错
