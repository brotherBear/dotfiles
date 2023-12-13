-- Desc: nvim-cmp configuration
return {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
        'hrsh7th/cmp-buffer',           -- source for buffer words
        'hrsh7th/cmp-path',             -- source for file paths
        'hrsh7th/cmp-nvim-lsp',         -- source for lsp
        'hrsh7th/cmp-emoji',            -- source for emojis
        'L3MON4D3/LuaSnip',             -- snippet engine support
        'saadparwaiz1/cmp_luasnip',     -- for autocomplete with snippets
        'hrsh7th/cmp-vsnip',            -- source for snippets
        'rafamadriz/friendly-snippets', -- useful snippets
        'onsails/lspkind-nvim',         -- icons for lsp
    },
    config = function()
        local cmp = require('cmp')
        local luasnip = require('luasnip')
        local lspkind = require('lspkind')

        --load vscode snippets from installed plugins (e.g. friendly-snippets)
        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            completion = {
                completeopt = 'menu,menuone,preview,noselect',
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },

            mapping = cmp.mapping.preset.insert({

                ["<C-k>"] = cmp.mapping.select_prev_item(),
                ["<C-j>"] = cmp.mapping.select_next_item(),
                ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.close(),
                ["<CR>"] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true,
                }),
                ['<Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end, { 'i', 's' }),
                ['<S-Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { 'i', 's' }),

            }),

            sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'copilot', group_index = 2 },
                { name = 'vsnip' },
                { name = 'path' },
                { name = 'buffer' },
                { name = 'emoji' },
            },

            formatting = {
                fields = { 'abbr', 'kind', 'menu' },
                expandable_indicator = true,

                format = lspkind.cmp_format({
                    with_text = true,
                    maxwidth = 50,
                    ellipsis_text = '…',
                }),
            },
        })
    end
}
