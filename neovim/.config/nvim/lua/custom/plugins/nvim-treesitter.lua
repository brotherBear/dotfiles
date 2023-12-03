return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/nvim-treesitter-refactor",
      "nvim-treesitter/nvim-treesitter-context",
      -- "nvim-treesitter/nvim-treesitter-indent",
      -- "nvim-treesitter/nvim-treesitter-highlight",
      "nvim-treesitter/playground",
    },
    config = function()
      -- import nvim-treesitter  plugins
      local treesitter = require("nvim-treesitter.configs")
      treesitter.setup({
        modules = {},
        auto_install = true,
        ignore_install = {},
        sync_install = true,
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        autotag = {
          enable = true,
        },
        ensure_installed = {
          "bash",
          "c",
          "cpp",
          "dockerfile",
          "gitignore",
          "json",
          "help",
          "html",
          "lua",
          "markdown",
          "python",
          "rust",
          "vim",
          "yaml",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
          },
        },
      })
    end,
  },
}
