return {
  "hrsh7th/nvim-cmp",
  optional = true,
  dependencies = { "R-nvim/cmp-r" },
  opts = function(_, opts)
    opts.sources = opts.sources or {}
    table.insert(opts.sources, { name = "cmp_r" })
  end,
}
