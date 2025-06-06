return {
	lua_ls = {
		Lua = {
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
			-- telemetry = { enable = false },
			diagnostics = {
				globals = { "vim" },
			},
			completion = {
				callSnippet = "Replace",
			},
		},
	},
	bashls = {
		filetypes = { "sh", "zsh", "bash" },
	},
	vimls = {
		filetypes = { "vim" },
	},
	rust_analyzer = {
		filetypes = { "rust" },
	},
	gopls = {
		filetypes = { "go" },
	},
}
