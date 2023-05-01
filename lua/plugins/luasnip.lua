if vim.g.snippets ~= "luasnip" then
  return
end


local ls = require("luasnip")
local types = require("luasnip.util.types")
local set = vim.keymap.set

ls.config.set_config({
  -- tells LuaSnip to remember last snippet so can jump back in
  history = true,
  -- updates dynamic snippets as you type
  updateevents = "TextChanged,TextChangedI",
  -- TODO: not convinced, will have to see
  enable_autosnippets = true,

  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "<--", "Error" } },
      },
    },
  },
})

set({"i", "s"}, "<C-j>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

set({"i", "s"}, "<C-k>", function()
  if ls.jumpable(-1) then
    ls.jumpable(-1)
  end
end, { silent = true })

set("i", "<C-l>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)
