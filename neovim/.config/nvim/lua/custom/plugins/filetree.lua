-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

-- remember to check the :help Neotree
return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {}
  end,

  vim.keymap.set('n', '<leader>nt', '<CMD>Neotree toggle<cr>'),
  vim.keymap.set('n', '<leader>nb', '<CMD>Neotree toggle show buffers right<cr>'),
  vim.keymap.set('n', '<leader>gs', '<CMD>Neotree float git_status<cr>'),

}
