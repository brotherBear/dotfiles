-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_format = "black"
vim.g.lazyvim_python_format_args = { "--line-length", "88" }
vim.g.lazyvim_python_format_on_save = true
vim.g.lazyvim_python_diagnostics = "ruff"
vim.g.lazyvim_python_ruff = "ruff"

-- vim.g.lazyvim.python_lint = "ruff"
-- vim.g.lazyvim.python_lint_args = { "--fix", "--line-length", "88" }
