local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node
local p = require("luasnip.extras").partial

local function bash(_, snip)
    local file = io.popen(snip.trigger, "r")
    local res = {}
    if not file then
        return
    end
    for line in file:lines() do
        table.insert(res, line)
    end
    return res
end

local snippets = {
    s({ trig = "ymd", name="Current date", dsc = "Insert the current date in YMD format"}, {p(os.date, "%Y-%m-%d"), }),
    s({ trig = "pwd" }, { f(bash, {}) }),
    s({ trig = "trigger" }, { t("Her er litt tekst") }),
}

ls.add_snippets("all", snippets)

return {}
