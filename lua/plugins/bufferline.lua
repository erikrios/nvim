return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VeryLazy",
	keys = {
		{ "<S-h>", ":BufferLineCyclePrev<CR>", silent = true, desc = "Move to Previous Buffer" },
		{ "<S-l>", ":BufferLineCycleNext<CR>", silent = true, desc = "Move to Next Buffer" },
		{ "<S-x>", ":bdelete<CR>", silent = true, desc = "Close the Current Buffer" },
	},
	config = function()
		require("bufferline").setup({})
	end,
}
