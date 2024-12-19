return {
  "saghen/blink.compat",
  optional = true, -- make optional so it's only enabled if any extras need it
  opts = {},
  version = not vim.g.lazyvim_blink_main and "*",
}
