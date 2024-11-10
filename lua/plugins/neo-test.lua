return {
  "nvim-neotest/neotest",
  optional = true,
  dependencies = {
    "fredrikaverpil/neotest-golang",
    "nvim-neotest/neotest-python",
    "Issafalcon/neotest-dotnet",
    "shunsambongi/neotest-testthat",
    "haydenmeade/neotest-jest",
    "marilari88/neotest-vitest",
    "olimorris/neotest-rspec",
  },
  keys = {
    {
      "<leader>tl",
      function()
        require("neotest").run.run_last()
      end,
      desc = "Run Last Test",
    },
    {
      "<leader>tL",
      function()
        require("neotest").run.run_last({ strategy = "dap" })
      end,
      desc = "Debug Last Test",
    },
    {
      "<leader>tw",
      "<cmd>lua require('neotest').run.run({ jestCommand = 'jest --watch ' })<cr>",
      desc = "Run Watch",
    },
  },

  opts = {
    adapters = {
      ["neotest-jest"] = {
        jestCommand = "npm test --",
        jestConfigFile = "custom.jest.config.ts",
        env = { CI = true },
        cwd = function()
          return vim.fn.getcwd()
        end,
      },
      ["neotest-vitest"] = {},
      ["neotest-testthat"] = {},
      ["neotest-python"] = {
        -- Here you can specify the settings for the adapter, i.e.
        -- runner = "pytest",
        -- python = ".venv/bin/python",
      },
      ["neotest-dotnet"] = {
        -- Here we can set options for neotest-dotnet
      },
      ["neotest-golang"] = {
        -- Here we can set options for neotest-golang, e.g.
        -- go_test_args = { "-v", "-race", "-count=1", "-timeout=60s" },
        dap_go_enabled = true, -- requires leoluz/nvim-dap-go
      },
      ["neotest-zig"] = {},
      ["rustaceanvim.neotest"] = {},
      ["neotest-rspec"] = {
        -- NOTE: By default neotest-rspec uses the system wide rspec gem instead of the one through bundler
        -- rspec_cmd = function()
        --   return vim.tbl_flatten({
        --     "bundle",
        --     "exec",
        --     "rspec",
        --   })
        -- end,
      },
    },
  },
}
