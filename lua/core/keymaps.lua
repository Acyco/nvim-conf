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
keymap.set({"n", "v"}, "H", "^", opt)
keymap.set({"n", "v"}, "L", "$", opt)

-- 保存
keymap.set("n", "<C-s>", ":w<CR>", opt)
keymap.set("n", "<C-S>", ":wa!<CR>", opt)



-- ESC  我是基本用不到。
keymap.set("n", "<C-c>", "<ESC>", opt)
keymap.set("i", "jk", "<ESC>", opt)

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
keymap.set('n', '<space>e', vim.diagnostic.open_float)
keymap.set('n', '[d', vim.diagnostic.goto_prev)
keymap.set('n', ']d', vim.diagnostic.goto_next)
keymap.set('n', '<space>q', vim.diagnostic.setloclist)
