## Neovim setup 

This configuration uses `Lazy.nvim` as the plugin manager. Please visit the [Lazy.nvim documentation](https://github.com/folke/lazy.nvim) for more information and how it works.

Additionally, please install the following supporting packages on your OS: `git, fzf, fd, lldb, and ripgrep`. Keep in mind that the package names might differ across Linux distributions, so make sure the package names match those used in your specific Linux distro.

The language server used in this configuration is [neovim-lspconfig](https://github.com/neovim/nvim-lspconfig). You can find more details at that link.

Use the following commands for plugin-related information:

- `:checkhealth lazy` - recommended to run after installation
- `:Lazy` - to manage plugins

Key mapping modes:

- `n`: normal mode only
- `v`: visual and select modes
- `o`: operator-pending mode
- `x`: visual mode only
- `s`: select mode only
- `i`: insert mode
- `c`: command-line mode
- `l`: insert, command-line, regexp-search ("Lang-Arg" pseudo-mode)

The comma ( `,` ) is the `leader` key. Press the comma key when opening Neovim to see the shortcut keys that have been configured.
