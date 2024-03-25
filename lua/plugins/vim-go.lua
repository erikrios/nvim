return {
  "fatih/vim-go",
  config = function ()
		vim.keymap.set("n", "gr", ":GoReferrers<CR>", {})
  end
}
