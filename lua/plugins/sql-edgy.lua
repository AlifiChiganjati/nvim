return {
  "folke/edgy.nvim",
  optional = true,
  opts = function(_, opts)
    opts.right = opts.right or {}
    table.insert(opts.right, {
      title = "Database",
      ft = "dbui",
      pinned = true,
      width = 0.3,
      open = function()
        vim.cmd("DBUI")
      end,
    })

    opts.bottom = opts.bottom or {}
    table.insert(opts.bottom, {
      title = "DB Query Result",
      ft = "dbout",
    })
  end,
}
