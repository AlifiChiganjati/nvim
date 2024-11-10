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
      hcl = { "packer_fmt" },
      terraform = { "terraform_fmt" },
      tf = { "terraform_fmt" },
      ["terraform-vars"] = { "terraform_fmt" },
    }
    opts.linters = {}
  end,
}
