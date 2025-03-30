# Vim Default Modern Theme

A modern Neovim theme with a transparent background by default. Based on VSCode's modern UI colors.

## Features

- Transparent background by default
- Set as default colorscheme for Neovim
- Clean and modern appearance
- Syntax highlighting optimized for better readability

## Installation

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use 'username/vim_default_modern.nvim'
```

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  'username/vim_default_modern.nvim',
  lazy = false,
  priority = 1000, -- Make sure it loads first
}
```

## Usage

The colorscheme is set to load automatically when Neovim starts.

If you want to manually set it:

```lua
vim.cmd.colorscheme('vim_default_modern')
```

## Configuration

You can adjust the theme settings:

```lua
require('vscode_modern').setup({
  transparent_background = true, -- Set to false to disable transparent background
  cursorline = false, -- Set to true to highlight the entire line of the cursor
  nvim_tree_darker = false,
  undercurl = true,
  italic_keyword = false,
})
```

## Compile

If you change any settings, you may need to recompile the theme:

```vim
:VSCodeModernCompile
```

## Screenshot

[Add screenshots here]

## License

MIT