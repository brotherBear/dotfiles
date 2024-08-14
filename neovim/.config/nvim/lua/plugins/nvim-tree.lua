-- remember to check the :help nvim-tree
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('nvim-tree').setup {}
  end,

  vim.keymap.set('n', '<leader>nt', '<CMD>NvimTreeToggle<cr>'),
  -- vim.keymap.set('n', '<leader>nb', '<CMD>nvim-tree toggle show buffers right<cr>'),
  -- vim.keymap.set('n', '<leader>gs', '<CMD>nvim-tree float git_status<cr>'),

}
