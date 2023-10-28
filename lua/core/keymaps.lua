local keymap = vim.keymap


local opt = { noremap = true, silent = true }

-- 窗口间的跳转
keymap.set("n", "<C-l>", "<C-w>l", opt)
keymap.set("n", "<C-h>", "<C-w>h", opt)
keymap.set("n", "<C-j>", "<C-w>j", opt)
keymap.set("n", "<C-k>", "<C-w>k", opt)

-- 切分窗口
keymap.set("n", "<leader>v", "<C-w>v", opt)
keymap.set("n", "<leader>s", "<C-w>s", opt)
keymap.set("n", "<leader>[", "<C-o>", opt)
keymap.set("n", "<leader>]", "<C-i>", opt)

-- 上下跳转
keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })


-- lh 行首  le 行尾
keymap.set("n", "H", "^", opt)
keymap.set("n", "L", "$", opt)
keymap.set("v", "H", "^", opt)
keymap.set("v", "L", "$", opt)

