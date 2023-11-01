return {
     {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = function ()
            require("gitsigns").setup()
        end
    },
    	{
		"tpope/vim-fugitive",
		event = "VeryLazy",
		cmd = "Git",
		config=function ()
			vim.cmd.cnoreabbrev([[git Git]])
			vim.cmd.cnoreabbrev([[gp Git push]])
		end
	}


}
