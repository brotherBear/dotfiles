-- setup must be called before loading the colorscheme
-- Default options:
return {
    "ellisonleao/gruvbox.nvim",
    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        }
    },
}

