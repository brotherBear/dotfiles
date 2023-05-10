local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node

return {

    ls.add_snippets("lua" , {
        ls.parser.parse_snippet("lm", "local M = {}\n\nfunction M.setup()\n    $1  \nend\n\nreturn M"),
        s("trig", { t("Her er litt tekst") }),
    })

}
