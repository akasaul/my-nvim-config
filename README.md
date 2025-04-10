# My Neovim Configuration

A modern, feature-rich Neovim configuration optimized for productivity and a smooth development experience.

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)

## Features

- **Plugin Management**: Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for efficient plugin management
- **LSP Integration**: Preconfigured LSP setup with [Mason](https://github.com/williamboman/mason.nvim) for easy language server installation
- **Syntax Highlighting**: Enhanced syntax highlighting with [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **File Navigation**:
  - [Telescope](https://github.com/nvim-telescope/telescope.nvim) for fuzzy finding
  - [Oil.nvim](https://github.com/stevearc/oil.nvim) for file management
  - [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) for tree-style file explorer
- **Git Integration**:
  - [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) for git decorations
  - [LazyGit](https://github.com/kdheepak/lazygit.nvim) integration
- **Coding Tools**:
  - Auto-completion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - Auto-pairs and surround functionality
  - Comment management
  - Code formatting and linting
  - Refactoring tools
- **UI Enhancements**:
  - Custom colorscheme with fine-tuned configuration
  - [Bufferline](https://github.com/akinsho/bufferline.nvim) for tab management
  - [Lualine](https://github.com/nvim-lualine/lualine.nvim) for status line
  - [Which-key](https://github.com/folke/which-key.nvim) for keybinding hints
  - [Trouble](https://github.com/folke/trouble.nvim) for error diagnostics
- **Terminal Integration**: Built-in terminal with [ToggleTerm](https://github.com/akinsho/toggleterm.nvim)
- **Session Management**: Auto-save and restore sessions
- **Development Support**:
  - Debugging with [nvim-dap](https://github.com/mfussenegger/nvim-dap)
  - Flutter development integration

## Requirements

- Neovim >= 0.9.0
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (optional, but recommended for icons)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope live grep)
- [fd](https://github.com/sharkdp/fd) (for faster file finding)

## Installation

### Backup your existing config

```bash
# Backup your existing Neovim configuration if you have one
mv ~/.config/nvim ~/.config/nvim.bak
```

### Clone this repository

```bash
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim
```

### Start Neovim

```bash
nvim
```

On first launch, the configuration will automatically:
1. Install lazy.nvim plugin manager
2. Install all plugins
3. Set up LSP servers via Mason

## Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lazy-lock.json           # Plugin version lock
├── lua/
│   └── niko/                # Main configuration namespace
│       ├── core/            # Core Neovim settings
│       │   ├── init.lua     # Core initialization
│       │   ├── keymaps.lua  # Key mappings
│       │   └── options.lua  # Neovim options
│       ├── plugins/         # Plugin configurations
│       │   ├── lsp/         # Language server configurations
│       │   └── ...          # Various plugin configs
│       └── lazy.lua         # Plugin manager setup
└── after/                   # Files loaded after plugins
```

## Customization

To customize this configuration:

1. Modify keymappings in `lua/niko/core/keymaps.lua`
2. Change Neovim options in `lua/niko/core/options.lua`
3. Add/remove plugins by editing files in the `lua/niko/plugins/` directory
4. Adjust LSP configurations in `lua/niko/plugins/lsp/`

## Included Plugins

Some of the notable plugins included:

- lazy.nvim
- nvim-lspconfig + mason.nvim
- nvim-treesitter
- telescope.nvim
- neo-tree.nvim
- lualine.nvim
- bufferline.nvim
- nvim-cmp + sources
- gitsigns.nvim
- which-key.nvim
- Comment.nvim
- nvim-autopairs
- toggleterm.nvim