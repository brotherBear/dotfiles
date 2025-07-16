-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- In visual mode selected lines can move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor centered when jumping pages down or up
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- override the standard [] movement keys to æ and ø in visual mode
vim.keymap.set("v", "ø", "<gv")
vim.keymap.set("v", "æ", ">gv")

-- Override the standard [ ] movement keys to ø and æ in normal mode
vim.keymap.set("n", "ø", "[[")
vim.keymap.set("n", "æ", "]]")

-- Override the tabs movement keys ø and æ
vim.keymap.set("n", "<leader><tab>æ", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>ø", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Process a markdown file to PDF presentation
vim.keymap.set("n", "<leader>pp", "<cmd>!pandoc -t beamer -f markdown -o %.pdf % && open %.pdf<cr>")
vim.keymap.set("n", "<leader>pd", "<cmd>!pandoc -f markdown -o %.pdf % && open %.pdf<cr>")
vim.keymap.set("n", "<leader>ph", "<cmd>!pandoc -f markdown -o %.html % && open %.html<cr>")

vim.api.nvim_create_user_command("GlowPreview", function()
  local file = vim.fn.expand("%:p")
  if file == "" then
    print("No file to preview")
    return
  end
  -- vim.cmd("Glow " .. file)
  vim.cmd("!glow " .. file)
end, { desc = "Preview current markdown file with Glow" })

vim.keymap.set("n", "<leader>gp", "<cmd>GlowPreview<cr>", { desc = "Preview current markdown file with Glow" })
