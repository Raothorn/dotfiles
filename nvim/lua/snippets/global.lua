local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt

local function dash_line(args)
    local title = args[1][1] or "TITLE"
    return string.rep("-", #title + 6)
end

ls.add_snippets("all", {
    s(
        "ctitle",
        fmt(
            [[
{}
-- {} --
{}
{}
]],
            {
                f(dash_line, { 1 }),
                i(1, "TITLE"),
                f(dash_line, { 1 }),
                i(0),
            }
        )
    ),
})
