return {
  "nvim-neotest/neotest",
  optional = true,
  dependencies = {
    "fredrikaverpil/neotest-golang",
    "nvim-neotest/neotest-python",
    "Issafalcon/neotest-dotnet",
  },
  opts = {
    adapters = {
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
    },
  },
}
