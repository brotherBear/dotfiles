-- line numbering options
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs etc.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indenting:
-- >> indent the current line
-- << outdent the current line
-- 4>> indent this and the next 3 lines
-- <C-d> outdent the current line.
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.showcmd = true
vim.opt.laststatus = 2

-- long lines should be fixed...
vim.opt.wrap = false

-- Enable folding at indent
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99

-- show matching parentheses
vim.opt.showmatch = true

-- undotree instead of swapfile
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- show 8 lines below cursor
vim.opt.scrolloff = 8
vim.opt.cursorline = true

-- Make space for diagnostic icons in first column
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"

-- mapleader - duplicated in remap.lua
vim.g.mapleader = " "

vim.g.python3_host_prog = "/opt/homebrew/bin/python3"

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
