return {
  "hrsh7th/nvim-cmp",
  dependencies = { "p00f/clangd_extensions.nvim" },
  opts = function(_, opts)
    opts.sorting = opts.sorting or {}
    opts.sorting.comparators = opts.sorting.comparators or {}
    table.insert(opts.sorting.comparators, 1, require("clangd_extensions.cmp_scores"))
  end,
}
