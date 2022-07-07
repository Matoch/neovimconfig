local ls = require "luasnip"
local types = require "luasnip.util.types"

ls.config.set_config {
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "⇦ Current Choice", "Error" } },
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

local date = function() return { os.date('%Y-%m-%d') } end

vim.keymap.set("i", "<c-l>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

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
  s("req", fmt("local {} = require('{}')", { i(1, "default "), rep(1) })),

  s("bar", fmt("local {} = require('{}')", { i(1, "default "), i(2, "grrr"), })),
})

local iiqRuleStuff = function(index)
  return f(function(arg)
    print(arg[1][1])
    if arg[1][1] == "" then
      return ""
    elseif arg[1][1] == " type=\"WebServiceBeforeOperationRule\"" then
      return { "<Description>This rule is used by the  Web Services connector before performing any operation like testconnection, aggregation etc .</Description>",
        "<Signature returnType=\"EndPoint\">",
        "  <Inputs>",
        "    <Argument name=\"log\">",
        "      <Description>",
        "        The log object associated with the SailPointContext.",
        "      </Description>",
        "    </Argument>",
        "    <Argument name=\"context\">",
        "      <Description>",
        "        A sailpoint.api.SailPointContext object that can be used to query the database if necessary.",
        "      </Description>",
        "    </Argument>",
        "    <Argument name=\"application\">",
        "      <Description>The application whose data file is being processed.</Description>",
        "    </Argument>",
        "    <Argument name=\"requestEndPoint\">",
        "      <Description>",
        "        The current request information contain header, body, context url, method type, response attribute map, successful response code",
        "      </Description>",
        "    </Argument>",
        "    <Argument name=\"oldResponseMap\">",
        "      <Description>earlier response object </Description>",
        "    </Argument>",
        "    <Argument name=\"restClient\">",
        "      <Description>REST Client Object</Description>",
        "    </Argument>",
        "  </Inputs>",
        "  <Returns>",
        "    <Argument name=\"EndPoint\">",
        "      <Description>Updated EndPoint Object</Description>",
        "    </Argument>",
        "  </Returns>",
        "</Signature>" }
    else
      return ""
    end
  end,
    { index })
end


ls.add_snippets("xml", {
  s("iiqrule",
    fmt([[<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE Rule PUBLIC "sailpoint.dtd" "sailpoint.dtd">
<Rule language="beanshell" name="{}"{}>
{}
  <Source>
    {}
  </Source>
</Rule>]],
      { i(1, "default"),
        c(2,
          { t "", t [[ type="JDBCBuildMap"]], t [[ type="AfterProvisioning"]], t [[ type="ApprovalAssignment"]],
            t [[ type="BeforeProvisioning"]], t [[ type="ConnectorAfterCreate"]], t [[ type="Correlation"]],
            t [[ type="FieldValue"]], t [[ type="IdentityAttribute"]], t [[ type="IdentityAttributeTarget"]],
            t [[ type="IdentityCreation"]], t [[ type="IdentityTrigger"]], t [[ type="JDBCBuildMap"]],
            t [[ type="Listener"]], t [[ type="MergeMaps"]], t [[ type="Refresh"]], t [[ type="RequestObjectSelector"]],
            t [[ type="ResourceObjectCustomization"]], t [[ type="SAMLCorrelation"]], t [[ type="Validation"]],
            t [[ type="WebServiceAfterOperationRule"]], t [[ type="WebServiceBeforeOperationRule"]],
            t [[ type="Workflow"]] }),
        iiqRuleStuff(2),
        i(0, "") })),
})
