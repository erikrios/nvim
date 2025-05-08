return {
  "fatih/vim-go",
  config = function ()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "go",
      callback = function ()
        vim.keymap.set("n", "gdp", ":GoDefPop<CR>", {})
        vim.keymap.set("n", "gr", ":GoReferrers<CR>", {})
        vim.keymap.set("n", "gi", ":GoImplements<CR>", {})
        vim.keymap.set("n", "gdb", ":GoDebugBreakpoint<CR>", {})
        vim.keymap.set("n", "gds", ":GoDebugStart<CR>", {})
        vim.keymap.set("n", "gdr", ":GoDebugRestart<CR>", {})
        vim.keymap.set("n", "gdt", ":GoDebugStop<CR>", {})
        vim.keymap.set("n", "gdc", ":GoDebugContinue<CR>", {})
        vim.keymap.set("n", "gdn", ":GoDebugNext<CR>", {})
        vim.keymap.set("n", "gdsi", ":GoDebugStep<CR>", {})
        vim.keymap.set("n", "gdso", ":GoDebugStepOut<CR>", {})
      end,
    })
  end
}
