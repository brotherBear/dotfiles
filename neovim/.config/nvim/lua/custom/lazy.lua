local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
   })
end

vim.opt.rtp:prepend(lazypath)
vim.opt.rtp:append("/opt/homebrew/opt/fzf/")

require("lazy").setup({
   { import = "custom.plugins" },
   { import = "plugins" },
   { import = "custom.plugins.lsp" },
}, {
   install = {
      colorscheme = { "gruvbox" },
   },
   checker = {
      enabled = true,
      notify = false,
   },
   change_detection = {
      notify = false,
   },
})

-- Setup neovim lua configuration
-- require('neodev').setup()
