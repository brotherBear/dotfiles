return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")

        local mason_lspconfig = require("mason-lspconfig")

        local mason_tool_installer = require("mason-tool-installer")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "v",
                    package_pending = ">",
                    package_uninstalled = "x",
                },
            },
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "pyright",
                "html",
                "lua_ls",
                "rust_analyzer",
            },
            -- auto-install configured servers (with lspconfig)
            -- not the same as ensure_installed
            automatic_installation = true,
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier",
                "stylua",
                "isort",
                "black",
                "pylint",
            },
        })
    end,

}
