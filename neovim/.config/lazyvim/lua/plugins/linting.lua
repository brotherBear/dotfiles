return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      python = { "ruff" },
      javascript = { "eslint" },
      typescript = { "eslint" },
      lua = { "luacheck" },
      json = { "jsonlint" },
      yaml = { "yamllint" },
    },
  },
}
