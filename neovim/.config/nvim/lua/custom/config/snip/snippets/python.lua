local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local snippets = {
    s("shebang", {
        t{"#!/usr/bin/env python3", "" },
        i(0),
    }),
}


ls.add_snippets("python", snippets)
return {}


