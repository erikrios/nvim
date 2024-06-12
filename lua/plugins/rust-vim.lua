return {
  "rust-lang/rust.vim",
  config = function ()
    -- Create an autocommand group for Rust
    vim.api.nvim_create_augroup("RustFmt", { clear = true })

    -- Add an autocommand to format Rust files on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.rs",
      group = "RustFmt",
      command = "RustFmt"
    })
  end
}
