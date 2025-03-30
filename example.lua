print(vim.o.lines)

-- Example usage of vim_default_modern theme
require('vscode_modern').setup({
  transparent_background = true, -- Enable transparent background
  cursorline = false,
  nvim_tree_darker = false,
  undercurl = true,
  italic_keyword = false,
})

-- The theme is set as default, but you can also set it manually:
-- vim.cmd.colorscheme('vim_default_modern')
