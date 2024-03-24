return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({})
		vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", {})
		vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", {})
		vim.keymap.set("n", "<S-x>", ":bdelete<CR>", {})
	end,
}
