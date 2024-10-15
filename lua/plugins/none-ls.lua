return {
  "nvimtools/none-ls.nvim",
  event = "LazyFile",
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
      sources = {
        nls.builtins.formatting.prettier,
        -- nls.builtins.formatting.fish_indent,
        -- nls.builtins.diagnostics.fish,
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.shfmt,
        nls.builtins.code_actions.gomodifytags,
        nls.builtins.code_actions.impl,
        nls.builtins.formatting.goimports,
        nls.builtins.formatting.gofumpt,
        nls.builtins.formatting.csharpier,
        nls.builtins.formatting.ktlint,
        nls.builtins.diagnostics.ktlint,
        nls.builtins.formatting.black,
        nls.builtins.diagnostics.cmake_lint,
        nls.builtins.diagnostics.markdownlint_cli2,
        nls.builtins.formatting.phpcsfixer,
        nls.builtins.diagnostics.phpcs,
      },
    }
  end,
}
