return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "clangd", -- C/C++ Language Server
      "codelldb", -- Debug adapter for C/C++
      "cmakelang",
      "cmakelint",
    },
  },
}
