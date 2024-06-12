return {
	"simrat39/rust-tools.nvim",
	config = function()
		require("rust-tools").setup({
			server = {
				on_attach = function(_, bufnr)
					-- Enable inlay hints
					require("rust-tools").inlay_hints.set()
					vim.api.nvim_create_autocmd("BufEnter", {
						pattern = "*.rs",
						callback = function()
							require("rust-tools").inlay_hints.set()
						end,
					})
				end,
				settings = {
					["rust-analyzer"] = {
						checkOnSave = {
							command = "clippy",
						},
						inlayHints = {
							lifetimeElisionHints = {
								enable = true,
								useParameterNames = true,
							},
							typeHints = {
								enable = true,
							},
							parameterHints = {
								enable = true,
							},
						},
					},
				},
			},
		})
	end,
}
