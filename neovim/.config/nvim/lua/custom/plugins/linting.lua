return {
    "mfussenegger/nvim-lint",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local lint = require("lint")
        lint.linters_by_ft = {
            python = { "pylint" },
            json = { "jsonlint" },
            sh = { "shellcheck" },
            vim = { "vint" },
            yaml = { "yamllint" },
            dockerfile = { "hadolint" },
            lua = { "luacheck" },
            -- html = { "htmlhint" },
            -- markdown = { "markdownlint" },
            --     css = { "stylelint" },
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
