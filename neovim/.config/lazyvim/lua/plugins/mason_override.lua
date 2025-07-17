-- This file is used to override the default Mason configuration in LazyVim.
-- When LazyVim removes the version pinning, this file will no longer be required.
return {
  {
    "mason-org/mason.nvim",
    version = "^2.0.0",
    -- opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "^2.0.0",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "marksman",
        "pyright",
        "rust_analyzer",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Declare a on_attach function to be used by all LSP servers (if wanted)
      on_attach = function(client, bufnr)
        -- Add your custom on_attach logic here
        local map = vim.keymap.set
        local opts = { buffer = bufnr, silent = true, remap = false }
        map("n", "gd", vim.lsp.buf.definition, opts)
        map("n", "K", vim.lsp.buf.hover, opts)
        map("n", "<leader>vd", vim.diagnostic.open_float, opts, "Open diagnostic float")
        map("n", "ød", vim.diagnostic.goto_next, opts, "Go to next diagnostic")
        map("n", "æd", vim.diagnostic.goto_prev, opts, "Go to previous diagnostic")
      end,
    },
  },
}
