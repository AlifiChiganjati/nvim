return {
  "mfussenegger/nvim-dap",
  optional = true,
  dependencies = {
    {
      "mfussenegger/nvim-dap-python",
    -- stylua: ignore
    keys = {
      { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
      { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
    },
      config = function()
        if vim.fn.has("win32") == 1 then
          require("dap-python").setup(LazyVim.get_pkg_path("debugpy", "/venv/Scripts/pythonw.exe"))
        else
          require("dap-python").setup(LazyVim.get_pkg_path("debugpy", "/venv/bin/python"))
        end
      end,
    },
    {
      "williamboman/mason.nvim",
      opts = { ensure_installed = { "java-debug-adapter", "java-test" } },
    },
    {
      "williamboman/mason.nvim",
      opts = { ensure_installed = { "delve" } },
    },
    {
      "leoluz/nvim-dap-go",
      opts = {},
    },
    {
      "suketa/nvim-dap-ruby",
      config = function()
        require("dap-ruby").setup()
      end,
    },
  },
  keys = {
    {
      "<leader>td",
      function()
        require("neotest").run.run({ strategy = "dap" })
      end,
      desc = "Debug Nearest",
    },
  },
  opts = function()
    -- Debug settings
    local dap = require("dap")
    dap.configurations.scala = {
      {
        type = "scala",
        request = "launch",
        name = "RunOrTest",
        metals = {
          runType = "runOrTestFile",
          --args = { "firstArg", "secondArg", "thirdArg" }, -- here just as an example
        },
      },
      {
        type = "scala",
        request = "launch",
        name = "Test Target",
        metals = {
          runType = "testTarget",
        },
      },
    }
  end,
}
