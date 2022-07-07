ls = require "luasnip"
types = require "luasnip.util.types"

ls.config.set_config {
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = {{ "<", "Error" } },
      },
    },
  },
}

local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")

local date = function() return {os.date('%Y-%m-%d')} end

ls.add_snippets("all", {
  s(
    {
      trig = "date",
      name = "Date",
      dscr = "Date in the form of YYYY-MM-DD",
    },
    {
      f(date, {}),
    }
  ),
  s("req", fmt("local {} = require('{}')", { i(1, "default"), rep(1) })),
  s("bar", fmt("local {} = require('{}')", { i(1, "default"), i(2, "grrr"), })),
})