vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


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

-- Keep search terms centered when jumping to next match down or up
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste over highlighted text without replacing the contents of the buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- use the global clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete to void register in both normal and visual mode
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- tmux access (not sure if this works)
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Snippets
vim.keymap.set("n", "<leader>note", ":-1read $HOME/.vim/snippets/.skeleton.notes.md<CR>")

-- formatting
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)

-- Vimdiff
vim.keymap.set("n", "<C-9>", "<C-]>")

-- shorthand search
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make a buffer executable
-- really nice for bash-scripts, etc.
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

