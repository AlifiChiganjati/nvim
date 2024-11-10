return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters = {
      csharpier = {
        command = "dotnet-csharpier",
        args = { "--write-stdout" },
      },
      ["markdown-toc"] = {
        condition = function(_, ctx)
          for _, line in ipairs(vim.api.nvim_buf_get_lines(ctx.buf, 0, -1, false)) do
            if line:find("<!%-%- toc %-%->") then
              return true
            end
          end
        end,
      },
      ["markdownlint-cli2"] = {
        condition = function(_, ctx)
          local diag = vim.tbl_filter(function(d)
            return d.source == "markdownlint"
          end, vim.diagnostic.get(ctx.buf))
          return #diag > 0
        end,
      },
    },

    formatters_by_ft = {
      ["python"] = { "black" },
      go = { "goimports", "gofumpt" },
      kotlin = { "ktlint" },
      ["markdown"] = { "prettier", "markdownlint-cli2", "markdown-toc" },
      ["markdown.mdx"] = { "prettier", "markdownlint-cli2", "markdown-toc" },
      cs = { "csharpier" },
      php = { "php_cs_fixer" },
      ruby = { "erb_formatter" },
      eruby = { "erb_formatter" },
    },
  },
}
