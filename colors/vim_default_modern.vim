-- disable LazyVim’s automatic theme loading
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = false,
    },
  },

  -- your custom theme logic
  {
    "nvim-treesitter/nvim-treesitter", -- depends on any plugin, just to make it a config block
    priority = 1000,
    config = function()
      -- Load default theme
      vim.cmd.colorscheme("default")

      -- Optional: transparent background
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    end,
  },
}
