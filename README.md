# Please see [gmr458] (https://github.com/gmr458/vscode_modern_theme.nvim) for original repo! 

## Also you need to run this in nvim with lazyvim + in a terminal emulator that is set to transparent, transluscent and blur. Screnshots are taken while running config in konsole.

# VSCode Modern theme for Neovim, Transparent
![screenshot-01](./screenshots/Screenshot_20241004_104859.png)

## Files / fzf
![screenshot-02](./screenshots/Screenshot_20241004_105126.png)

## Neo-Tree Filesystem and Editor
![screenshot-03](./screenshots/Screenshot_20241004_105151.png)


# Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
  {
    "Z-F-x/vscode_modern_theme_transparent.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    lazy = false,
    priority = 1000,
    config = function()
      require("vscode_modern").setup({
        cursorline = true,
        transparent_background = true,
        nvim_tree_darker = true,
      })
      vim.cmd([[colorscheme vscode_modern]])

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
      vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
    end,
  },

```

# vim_default_modern.nvim

A Neovim color scheme inspired by VSCode's modern theme but using Neovim's default colors, with transparent backgrounds by default.

## Features

- Dark and light variants based on Neovim's default color palette
- Transparent backgrounds throughout the UI
- Support for LSP, Treesitter, and common plugins
- Clean, modern look with Neovim's official colors

## Installation

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use {
  'username/vim_default_modern.nvim',
  config = function()
    require('vim_default_modern').setup({
      -- Optional configuration
      cursorline = false,    -- Enable cursorline highlight
      undercurl = true,      -- Enable undercurls for diagnostics
      italic_keyword = false, -- Enable italics for keywords
    })
    vim.cmd('colorscheme vim_default_modern')
  end
}
```

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  'username/vim_default_modern.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    -- Optional configuration
    cursorline = false,    -- Enable cursorline highlight
    undercurl = true,      -- Enable undercurls for diagnostics
    italic_keyword = false, -- Enable italics for keywords
  },
  config = function(_, opts)
    require('vim_default_modern').setup(opts)
    vim.cmd('colorscheme vim_default_modern')
  end,
}
```

## Configuration

The theme comes with these default settings:

```lua
{
  cursorline = false,            -- Enable cursorline highlight
  transparent_background = true, -- Always true (cannot be changed)
  undercurl = true,              -- Enable undercurls for diagnostics
  italic_keyword = false,        -- Enable italics for keywords
}
```

Note: The `transparent_background` option is always set to `true` for this theme.

## Switching Between Dark and Light Modes

To switch between dark and light variants:

```lua
-- Dark mode
vim.opt.background = 'dark'
vim.cmd('colorscheme vim_default_modern')

-- Light mode
vim.opt.background = 'light'
vim.cmd('colorscheme vim_default_modern')
```

## Colors

This theme uses Neovim's default color palette as defined in the Neovim 0.10+ default colorscheme:

### Dark Theme Colors
- Background: Transparent
- Foreground: Light gray
- Comments: Green
- Strings: Orange
- Functions: Yellow
- Keywords: Blue
- Types: Teal
- Variables: Light blue

### Light Theme Colors  
- Background: Transparent
- Foreground: Dark gray
- Comments: Green
- Strings: Red
- Functions: Yellow
- Keywords: Blue
- Types: Teal
- Variables: Blue

## Credits

This theme is a transparent adaptation of the VSCode Modern color scheme, using Neovim's default colorscheme values.