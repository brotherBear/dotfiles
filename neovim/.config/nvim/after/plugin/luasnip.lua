local ls = require "luasnip"
local types = require "luasnip.util.types"

ls.config.set_config {
    -- Remember the last snippet
    history = true,
    -- update as you type (dynamic snippets)
    updateevents = "TextChanged,TextChangedI",
    -- autosnippets!
    enable_autosnippets = true,

    ext_opts = {
            [types.choiceNode] = {
            active = {
                virt_text = { { "<-", "Error" } },
            },
        },
    },
}

-- LuaSnip keymaps (from TJDevries video on luasnip)
-- expand snippet or jump to next stop in snippet
vim.keymap.set({ "i", "s" }, "<leader>k", function()
        if ls.expand_or_jumpable() then
            ls.expand_or_jump()
        end
    end,
    { silent = true })

-- jump back to previous item in snippet
vim.keymap.set({ "i", "s" }, "<c-j>", function()
        if ls.jumpable(-1) then
            ls.jump(-1)
        end
    end,
    { silent = true })

-- select within a list of options
vim.keymap.set("i", "<c-l>", function()
        if ls.choice_active() then
            ls.change_choice(1)
        end
    end,
    { silent = true })


-- easy reload snippets from inside neovim
vim.keymap.set("n", "<leader><leader>s", "<CMD>source ~/.config/nvim/after/plugin/luasnip.lua<CR>")
