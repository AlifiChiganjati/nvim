return {
  "allaman/emoji.nvim",
  version = "*", -- optionally pin to a tag
  ft = "markdown", -- adjust to your needs
  dependencies = {
    -- util for handling paths
    "nvim-lua/plenary.nvim",
    -- optional for nvim-cmp integration
    "hrsh7th/nvim-cmp",
    -- optional for telescope integration
    "nvim-telescope/telescope.nvim",
    -- optional for fzf-lua integration via vim.ui.select
    "ibhagwan/fzf-lua",
  },
  opts = {
    -- default is false
    -- enable_cmp_integration = true,
    -- optional if your plugin installation directory
    -- is not vim.fn.stdpath("data") .. "/lazy/
    -- plugin_path = vim.fn.expand("$HOME/.local/share/nvim/lazy/emoji.nvim/lua/data/emojis.json"),
  },
  config = function(_, opts)
    -- require("telescope").load_extension("emoji")
    require("emoji").setup(opts)
    -- optional for telescope integration
    local ts = require("telescope").load_extension("emoji")
    vim.keymap.set("n", "<leader>se", ts.emoji, { desc = "[S]earch [E]moji" })
  end,
  init = function()
    require("telescope").load_extension("emoji")
  end,
}
