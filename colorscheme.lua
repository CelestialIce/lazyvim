return {
  -- 添加 Gruvbox 主题
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
    },
  },

  -- 配置 LazyVim 使用 Gruvbox 主题
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
