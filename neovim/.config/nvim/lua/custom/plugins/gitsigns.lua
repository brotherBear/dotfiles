return {
   "lewis6991/gitsigns.nvim",
   event = { "BufReadPre", "BufNewFile" },
   config = true,
   opts = {
      -- See `:help gitsigns.txt`
      current_line_blame = true,
   },
}
