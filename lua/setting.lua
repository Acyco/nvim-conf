local set = vim.o



-- 显示行号
set.number = true
-- 相对行号
set.relativenumber = true
-- 剪切板
set.clipboard = "unnamed"
-- 设置编辑时制表符占用空格数
set.tabstop = 4
-- 设置格式化时制表符占用空格数
set.shiftwidth = 4
-- 让vim把连续数量的空格视为一个制表符
set.softtabstop = 4
-- 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set.hidden = true
-- 开启自动缩进
set.autoindent = true
-- 设置使用C/C++语言的自动缩进方式
set.cindent = true
-- 自动选择对齐方式
set.smartindent = true
-- 智能的判断要不要区分搜索模式大小写
set.smartcase = true
-- 文件在vim之外修改过，自动重新读入
set.autoread = true
-- 支持鼠标
set.mouse="a"
-- 打开状态栏标尺
set.ruler = true
-- 把插入的 tab 字符替换成特定数目的空格
set.expandtab = true
-- 文件编码
set.encoding="utf-8"


