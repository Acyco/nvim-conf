
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
-- vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
    {
        "nvim-treesitter/nvim-treesitter",
        config = function ()
            require'nvim-treesitter.configs'.setup {
 highlight = {
    enable = true,

 },
    }
            
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = function ()
            require("gitsigns").setup()
        end
    },
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeOpen", "NerdSmartLocated" },
		keys = {
			{ "<leader>l", ":NvimTreeFindFile<CR>", desc = "smart location" },
			{ "<leader>e", ":NvimTreeToggle<CR>", desc = "file tree toggle" },
		},
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local function my_on_attach(bufnr)
				local api = require("nvim-tree.api")

				local function opts(desc)
					return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				end

				-- default mappings
				api.config.mappings.default_on_attach(bufnr)

				-- custom mappings
				vim.keymap.set("n", "s", api.node.open.vertical, opts("Vsplit"))
				vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
			end
			require("nvim-tree").setup({
				on_attach = my_on_attach,
				sort_by = "case_sensitive",
				view = {
					width = 30,
				},
				actions = {
					open_file = {
						window_picker = {
							chars = "fjkdslaqwergh",
						},
					},
				},
				renderer = {
					icons = {
						glyphs = {
						git = {
								unstaged = "✗",
								staged = "✓",
								unmerged = "⌥",
								renamed = "➜",
								untracked = "★",
								deleted = "⊖",
								ignored = "◌",
							},
						},
					},
				},
				filters = {
					dotfiles = false,
				},
			})
		end

	},
	{
		 "folke/which-key.nvim",
  		event = "VeryLazy",
  		init = function()
   			vim.o.timeout = true
    			vim.o.timeoutlen = 300
  		end,
		opts = {
		    -- your configuration comes here
		    -- or leave it empty to use the default settings
		    -- refer to the configuration section below
		  }
	},
	{
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
		config = function()
			require("persistence").setup()
		end,
	},
	{
		event = "VeryLazy",
		'ryanoasis/vim-devicons'
	},
	{
		-- 自动补全
		event = "VeryLazy",
		"hrsh7th/nvim-cmp",
		dependencies = {
			'neovim/nvim-lspconfig',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'L3MON4D3/LuaSnip',
		}
	},
	{
		"windwp/nvim-autopairs",
		event = "VeryLazy",
		config = function()
			require("nvim-autopairs").setup({
				fast_wrap = {},
				disable_filetype = { "TelescopePrompt", "vim", "sh" },
			})
		end,
	},
	{
		"RRethy/nvim-base16",
		lazy = true
	},
	{
		"folke/neodev.nvim",
		lazy = true
	},

	-- 搜索
	{
		cmd = "Telescope",
		keys = {
			{ "<leader>p",  ":Telescope find_files<CR>", desc = "find files" },
			{ "<leader>P",  ":Telescope live_grep<CR>",  desc = "grep file" },
			{ "<leader>rs", ":Telescope resume<CR>",     desc = "resume" },
			{ "<leader>q",  ":Telescope oldfiles<CR>",   desc = "oldfiles" }
		},
		'nvim-telescope/telescope.nvim',
		tag = '0.1.4',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		event = "VeryLazy",
		"williamboman/mason.nvim",
		build = ":MasonUpdate"
	},
	{
		event = "VeryLazy",
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason-lspconfig.nvim" }
	},
	-- MarkDown预览
	{
		event = "VeryLazy",
		"iamcco/markdown-preview.nvim",
    		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    		ft = { "markdown" },
      	  	build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		event = "VeryLazy",
		"tpope/vim-fugitive",
		cmd = "Git",
		config=function ()
			vim.cmd.cnoreabbrev([[git Git]])
			vim.cmd.cnoreabbrev([[gp Git push]])
		end
	}

})

