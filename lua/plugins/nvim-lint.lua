return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = function(_, opts)
    opts.linters_by_ft = {
      cmake = { "cmakelint" },
      dockerfile = { "hadolint" },
      kotlin = { "ktlint" },
      markdown = { "markdownlint-cli2" },
      php = { "phpcs" },
    }

    opts.linters = {}
  end,
}
