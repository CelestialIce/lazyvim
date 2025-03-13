return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "c", "cpp", "cmake" },
    highlight = { enable = true },
  },
}
