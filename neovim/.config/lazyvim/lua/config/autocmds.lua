-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Apply filetype for .secrets files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = ".secrets",
  callback = function()
    vim.bo.filetype = "sh"
  end,
})
