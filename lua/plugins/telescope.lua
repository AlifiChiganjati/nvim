return {
  "nvim-telescope/telescope.nvim",
  optional = true,
  specs = {
    {
      "ANGkeith/telescope-terraform-doc.nvim",
      ft = { "terraform", "hcl" },
      config = function()
        LazyVim.on_load("telescope.nvim", function()
          require("telescope").load_extension("terraform_doc")
        end)
      end,
    },
    {
      "cappyzawa/telescope-terraform.nvim",
      ft = { "terraform", "hcl" },
      config = function()
        LazyVim.on_load("telescope.nvim", function()
          require("telescope").load_extension("terraform")
        end)
      end,
    },
    keys = {
     -- add a keymap to browse plugin files                                                                        
     -- stylua: ignore                                                                                             
     {
       "<leader>fp",
       function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
       desc = "Find Plugin File",
     },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
