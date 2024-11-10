return {
  "neovim/nvim-lspconfig",
  optional = true,
  opts = {
    servers = {
      thriftls = {},
      texlab = {
        keys = {
          { "<Leader>K", "<plug>(vimtex-doc-package)", desc = "Vimtex Docs", silent = true },
        },
      },
    },
  },
}
