-- This file is a handy place for adding plugins that require no configuration, or where I
-- want to add configuration inline.
return {
    --  Colorscheme Theme
    "ellisonleao/gruvbox.nvim",

    --  keyboard config for norwegian mac users
    -- 'gauteh/vim-norway',

    -- 'theprimeagen/harpoon',

    { 
        -- Add indentation guides even on blank lines
        'lukas-reineke/indent-blankline.nvim',
        -- See `:help indent_blankline.txt`
        main = "ibl",
        opts = { },
    },

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- lua functions used by many plugins
  "nvim-lua/plenary.nvim",

  -- tmux and split window navigation
  "christoomey/vim-tmux-navigator",

}
