-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Simplify movement between screen splits
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")

-- Enable folding
vim.keymap.set("n", "<leader>F", "za")

-- In visual mode selected lines can move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor centered when jumping pages down or up
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Diagnostic keymaps
vim.keymap.set("n", "-d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "+d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Keep search terms centered when jumping to next match down or up
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste over highlighted text without replacing the contents of the buffer
vim.keymap.set("x", "<leader>p", '"_dP')

-- use the global clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- delete-to-void register in both normal and visual mode
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- tmux access (not sure if this works)
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Snippets
vim.keymap.set("n", "<leader>note", ":-1read $HOME/.vim/snippets/.skeleton.notes.md<CR>")

-- formatting
-- vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)

-- Vimdiff
vim.keymap.set("n", "<C-9>", "<C-]>")

-- shorthand search
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Process a markdown file to PDF presentation
vim.keymap.set("n", "<leader>pp", "<cmd>!pandoc -t beamer -f markdown -o %.pdf % && open %.pdf<cr>")
vim.keymap.set("n", "<leader>pd", "<cmd>!pandoc -f markdown -o %.pdf % && open %.pdf<cr>")

-- make a buffer executable
-- really nice for bash-scripts, etc.
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Run scripts
vim.keymap.set("n", "<leader>ru", ":!cargo run<CR>")
vim.keymap.set("n", "<leader>rd", ":!rustup doc<CR>")
vim.keymap.set("n", "<leader>rt", ":!cargo test<CR>")
vim.keymap.set("n", "<leader>py", ":!python3 %<CR>")
vim.keymap.set("n", "<leader>dj", ":!python3 manage.py runserver<CR>")
vim.keymap.set("n", "<leader>sh", ":!sh %<CR>")
-- vim.keymap.set("n", "<leader>t", ":terminal<CR>GA")

-- nnoremap cpp :!c++ % -o %:r && ./%:r <CR>           " C++ compile and run macro
-- nnoremap sh :!chmod +x % && source %<CR>            " Bash sourcing macro
-- nnoremap c :!clang % -o %:r && ./%:r <CR>           " C compile and run macro
