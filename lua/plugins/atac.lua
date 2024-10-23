return {
  "NachoNievaG/atac.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  config = function()
    require("atac").setup({
      dir = "~/my/work/directory", -- By default, the dir will be set as /tmp/atac
    })
  end,
}
