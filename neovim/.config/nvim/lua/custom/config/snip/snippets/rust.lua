local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local snippets = {
    s("rsay", {
        t{"println!(\"{}\", ", i(1), ");", ""},
        i(0),
    }),

}

ls.add_snippets("rust", snippets)
return {}
