return {
	{
		-- Find, Filter, Preview, Pick.
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{
				"<leader>o",
				function()
					require("telescope.builtin").buffers()
				end,
				desc = "Buffers",
			},
			{
				"<leader>sf",
				function()
					require("telescope.builtin").find_files()
				end,
				desc = "Find File (CWD)",
			},
			{
				"<leader>sg",
				function()
					require("telescope.builtin").git_files()
				end,
				desc = "Search Git Files",
			},
			{
				"<leader>sh",
				function()
					require("telescope.builtin").help_tags()
				end,
				desc = "Find Help",
			},
			{
				"<leader>sH",
				function()
					require("telescope.builtin").highlights()
				end,
				desc = "Find highlight groups",
			},
			{
				"<leader>sM",
				function()
					require("telescope.builtin").man_pages()
				end,
				desc = "Map Pages",
			},
			{
				"<leader>so",
				function()
					require("telescope.builtin").oldfiles()
				end,
				desc = "Open Recent File",
			},
			{
				"<leader>sR",
				function()
					require("telescope.builtin").registers()
				end,
				desc = "Registers",
			},
			{
				"<leader>st",
				function()
					require("telescope.builtin").live_grep()
				end,
				desc = "Live Grep",
			},
			{
				"<leader>sT",
				function()
					require("telescope.builtin").grep_string()
				end,
				desc = "Grep String",
			},
			{
				"<leader>sk",
				function()
					require("telescope.builtin").keymaps()
				end,
				desc = "Keymaps",
			},
			{
				"<leader>sC",
				function()
					require("telescope.builtin").commands()
				end,
				desc = "Commands",
			},
			{
				"<leader>sl",
				function()
					require("telescope.builtin").resume()
				end,
				desc = "Resume last search",
			},
			{
				"<leader>sc",
				function()
					require("telescope.builtin").git_commits()
				end,
				desc = "Git commits",
			},
			{
				"<leader>sB",
				function()
					require("telescope.builtin").git_branches()
				end,
				desc = "Git branches",
			},
			{
				"<leader>sm",
				function()
					require("telescope.builtin").git_status()
				end,
				desc = "Git status",
			},
			{
				"<leader>sS",
				function()
					require("telescope.builtin").git_stash()
				end,
				desc = "Git stash",
			},
			{
				"<leader>sb",
				function()
					require("telescope.builtin").buffers()
				end,
				desc = "Buffers",
			},
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			require("telescope").load_extension("ui-select")
		end,
	},
}
