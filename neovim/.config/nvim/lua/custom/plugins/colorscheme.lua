-- setup must be called before loading the colorscheme
-- Default options:
return {
   "tiagovla/tokyodark.nvim",
   -- "ellisonleao/gruvbox.nvim",
   -- "vigoux/oak",
   -- "catppuccin/nvim",
   -- "sainnhe/sonokai",
   priority = 1000,
   -- Configure LazyVim to load the colorscheme
   {
      "LazyVim/LazyVim",
      opts = {
         colorscheme = "tokyodark",
         background = "dark",
      },
   },
}
