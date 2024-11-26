
# 🚀 Personal Neovim Configuration

This is my personal Neovim configuration, initially inspired by [ThePrimeagen](https://github.com/ThePrimeagen)'s setup, with additional customizations for Python debugging and the Avante UI enhancement.

## 🎯 Purpose

This repository primarily serves as a backup for my personal Neovim configuration. It combines powerful development features with a beautiful interface, making it a pleasure to write code.

## ✨ Features

- Beautiful UI with Avante and Catppuccin Mocha theme
- Robust Python debugging support with nvim-dap
- Git integration
- LSP support
- File navigation and fuzzy finding
- Testing framework
- And much more!

## 🔌 Included Plugins

Here's a list of the main plugins included in this configuration:

### UI and Aesthetics
- [avante.nvim](https://github.com/nvim-avante/avante.nvim) - Modern UI components
- [catppuccin/nvim](https://github.com/catppuccin/nvim) - Soothing pastel theme (Mocha variant)
- [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim) - Distraction-free coding

### Development Tools
- [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap) - Debug Adapter Protocol support
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) - Git integration
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configuration
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) - Package manager for LSP servers
- [nvim-neotest/neotest](https://github.com/nvim-neotest/neotest) - Testing framework
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim) - Pretty diagnostics
- [mbbill/undotree](https://github.com/mbbill/undotree) - Visual undo history
- [laytan/cloak.nvim](https://github.com/laytan/cloak.nvim) - Hide sensitive information
- [ThePrimeagen/vim-be-good](https://github.com/ThePrimeagen/vim-be-good) - Vim movement practice game

## 🛠️ Installation

1. Backup your existing Neovim configuration if you have one:
```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

2. Clone this repository:
```bash
git clone https://github.com/gub-7/nvim-config.git ~/.config/nvim
```

3. Start Neovim and let the plugins install:
```bash
nvim
```

## 🙏 Acknowledgments

- Special thanks to [ThePrimeagen](https://github.com/ThePrimeagen) for the initial inspiration
- All the plugin authors who make these amazing tools
- The Neovim community for their continuous support and contributions

## 📝 Note

This is a personal configuration that I maintain primarily for my own use. Feel free to use it as inspiration for your own setup!
