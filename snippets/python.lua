-- snippets for the python programming language
local ls = require("luasnip")
local s = ls.snippet
local t, i, c = ls.text_node, ls.insert_node, ls.choice_node
local d, f = ls.dynamic_node, ls.function_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

local snippets = {
  -- creating first snippet
  s("hello world", { t("print(\"hello, world!\")"), }),
}

return snippets
