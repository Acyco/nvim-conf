return {
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

}
