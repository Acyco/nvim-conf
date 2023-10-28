local opt = vim.opt

-- 显示行号
opt.number = true
-- 相对行号
opt.relativenumber = true
-- 剪切板
opt.clipboard = "unnamed"
-- 设置编辑时制表符占用空格数
opt.tabstop = 4
-- 设置格式化时制表符占用空格数
opt.shiftwidth = 4
-- 让vim把连续数量的空格视为一个制表符
opt.softtabstop = 4
-- 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
opt.hidden = true
-- 开启自动缩进
opt.autoindent = true
-- 设置使用C/C++语言的自动缩进方式
opt.cindent = true
-- 自动选择对齐方式
opt.smartindent = true
-- 智能的判断要不要区分搜索模式大小写
opt.smartcase = true
-- 文件在vim之外修改过，自动重新读入
opt.autoread = true
-- 支持鼠标
opt.mouse="a"
-- 打开状态栏标尺
opt.ruler = true
-- 把插入的 tab 字符替换成特定数目的空格
opt.expandtab = true
-- 文件编码
opt.encoding="utf-8"


