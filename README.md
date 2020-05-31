# vim_learning

## 常用使用

- normal 模式  (esc to normal mode)
- insert 模式  (i/a/I/A...)
- visual 模式  (v/V/c-v)
- command 模式 (: / ) ：（冒号）键或者/ （斜杠）
  在命令行 ctrl+p, ctrl+n 切换以前的命令，类似terminal上下键
- replace 模式 (r/R)

normal模式切换到insert模式: gi到最后编辑的位置
insert模式切换到normal模式: ESC, ctrl+c, ctrl+[

约定
一般按键说明
按键               说明
x                 按下 x 字母
dw                依次按下 d 和 w 字母
dap               依次按下 d a p 字母
<C-n>             同时按下 <Ctrl> + n 字母
g<C-]>            先按下 g, 然后同时按下 <Ctrl> + ]
<C-r>0            同时按下 <Ctrl> + r, 然后按下 0
<C-w><C-=>        先同时按下 <Ctrl> + w, 然后再同时按下 <Ctrl> + =

替代字符
按键               说明
f{char}           按下 f + 其他任何字符
`{a-z}            按下 ` + 任意小写字母
m{a-zA-Z}         按下 m + 任意大小写字母
d{motion}         按下 d + motion 命令 (比如:2h, 2j, 5w 参考:Vim编辑器导航基础 )
<C-r>{register}   同时按下 <Ctrl> + r, 然后接 {register} 寄存器

特殊的按键
按键              说明
<Esc>            Escape 键
<CR>             回车键 (同 <Enter>)
<Ctrl>           Control 键
<Tab>            Tab 键
<Shift>          Shift 键
<S-Tab>          同时按下 <Shift> + <Tab> 键
<Up>             向上健
<Down>           向下健
␣   空格键        ␣
