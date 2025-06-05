return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	enabled = true,
	lazy = false,
	event = { "BufReadPost", "BufNewFile", "VeryLazy" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "everforest",
			},
			sections = {
				lualine_c = {
					{
						"filename",
						path = 1,
					},
				},
			},
		})
	end,
}
