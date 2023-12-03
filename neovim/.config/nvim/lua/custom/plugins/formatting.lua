return {
    "stevearc/conform.nvim",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                lua = {
                    {
                        exe = "stylua",
                        args = { "--config-path", vim.fn.stdpath("config") .. "/stylua.toml", "-" },
                    },
                },
                python = {
                    {
                        exe = "black",
                        args = { "--quiet", "-" },
                    },
                },
                rust = {
                    {
                        exe = "rustfmt",
                        args = { "--emit=stdout" },
                    },
                },
                typescript = {
                    {
                        exe = "prettier",
                        args = { "--stdin-filepath", vim.fn.expand("%:p") },
                    },
                },
                typescriptreact = {
                    {
                        exe = "prettier",
                        args = { "--stdin-filepath", vim.fn.expand("%:p") },
                    },
                },
                javascript = {
                    {
                        exe = "prettier",
                        args = { "--stdin-filepath", vim.fn.expand("%:p") },
                    },
                },
                javascriptreact = {
                    {
                        exe = "prettier",
                        args = { "--stdin-filepath", vim.fn.expand("%:p") },
                    },
                },
                json = {
                    {
                        exe = "prettier",
                        args = { "--stdin-filepath", vim.fn.expand("%:p") },
                    },
                },
                html = {
                    {
                        exe = "prettier",
                        args = { "--stdin-filepath", vim.fn.expand("%:p") },
                    },
                },
                css = {
                    {
                        exe = "prettier",
                        args = { "--stdin-filepath", vim.fn.expand("%:p") },
                    },
                },
                scss = {
                    {
                        exe = "prettier",
                        args = { "--stdin-filepath", vim.fn.expand("%:p") },
                    },
                },
                markdown = {
                    {
                        exe = "prettier",
                        args = { "--stdin-filepath", vim.fn.expand("%:p") },
                    },
                },

            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 5000,
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            })
        end, { noremap = true, silent = true, desc = "Format file or range (in visual mode)" })
    end,
}
