return {
    "mfussenegger/nvim-lint",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local lint = require("lint")
        lint.linters_by_ft = {
            python = { "pylint" },
            lua = { "luacheck" },
            sh = { "shellcheck" },
            vim = { "vint" },
            markdown = { "markdownlint" },
            yaml = { "yamllint" },
            json = { "jsonlint" },
            dockerfile = { "hadolint" },
            html = { "htmlhint" },
            css = { "stylelint" },
            javascript = { "eslint" },
            typescript = { "eslint" },
            typescriptreact = { "eslint" },
            javascriptreact = { "eslint" },
            vue = { "eslint" },
        }

        local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            group = lint_augroup,
            callback = function()
                lint.try_lint()
            end,
        })

        vim.keymap.set("n", "<C-l>", function()
            lint.try_lint()
        end, { desc = "Trigger linting for current file" })
    end,
}
