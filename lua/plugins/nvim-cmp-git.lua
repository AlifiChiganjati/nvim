return {
  "hrsh7th/nvim-cmp",
  optional = true,
  dependencies = {
    { "petertriho/cmp-git", opts = {} },
  },
  ---@module 'cmp'
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    table.insert(opts.sources, { name = "git" })
  end,
}
