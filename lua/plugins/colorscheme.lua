return {
  -- Add Tokyo Night plugin with moon style
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
    },
  },

  -- Configure LazyVim to load tokyonight
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon", -- note: use tokyonight-moon for moon style
    },
  },
}
