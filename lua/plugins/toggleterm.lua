return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup()
			vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle Floating Terminal" })
		end,
	},
}
