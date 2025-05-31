return {
	"fatih/vim-go",
	config = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "go",
			callback = function()
				local opts = { buffer = true } -- buffer-local mapping for Go buffers
				vim.keymap.set("n", "gdg", ":GoDef<CR>", opts)
				vim.keymap.set("n", "gdp", ":GoDefPop<CR>", opts)
				vim.keymap.set("n", "gr", ":GoReferrers<CR>", opts)
				vim.keymap.set("n", "gi", ":GoImplements<CR>", opts)
				vim.keymap.set("n", "gdb", ":GoDebugBreakpoint<CR>", opts)
				vim.keymap.set("n", "gds", ":GoDebugStart<CR>", opts)
				vim.keymap.set("n", "gdr", ":GoDebugRestart<CR>", opts)
				vim.keymap.set("n", "gdt", ":GoDebugStop<CR>", opts)
				vim.keymap.set("n", "gdc", ":GoDebugContinue<CR>", opts)
				vim.keymap.set("n", "gdn", ":GoDebugNext<CR>", opts)
				vim.keymap.set("n", "gdsi", ":GoDebugStep<CR>", opts)
				vim.keymap.set("n", "gdso", ":GoDebugStepOut<CR>", opts)
			end,
		})
	end,
}
