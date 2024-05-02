-- setup must be called before loading the colorscheme
-- Default options:
return {
   "tiagovla/tokyodark.nvim",
   -- NOTE: These are other colorschemes that I have considered:
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
