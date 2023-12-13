-- setup must be called before loading the colorscheme
-- Default options:
return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        }
    },
}
