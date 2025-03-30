-- Set vim_default_modern as the default colorscheme
vim.cmd([[
  augroup DefaultColorScheme
    autocmd!
    autocmd VimEnter * colorscheme vim_default_modern
  augroup END
]]) 