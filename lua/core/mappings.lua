local set = vim.keymap.set
local opts = { noremap = true, silent = true }

-- NORMAL ----------------------------------------------------------------------
set("n", "<leader>pv", vim.cmd.Ex)
set("n", "Y", "yg$")
-- center cursor on screen after these jumps/commands
set("n", "J", "mzJ`z")
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")
set("n", "zj", "zjzz")
set("n", "zk", "zkzz")
set("n", "zo", "zozz")
set("n", "zc", "zCzz")
-- global search and replace for the word you are on
set("n", "<leader>r", [[:%s//g<Left><Left>]])
set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})
-- see https://stackoverflow.com/a/16136133/6064933
set("n", "<space>o", "printf('m`%so<ESC>``', v:count1)", { expr = true, desc = "insert line below", })
set("n", "<space>O", "printf('m`%sO<ESC>``', v:count1)", { expr = true, desc = "insert line above", })
-- Change text without putting it into the vim register,
-- see https://stackoverflow.com/q/54255/6064933
set("n", "c", '"_c')
set("n", "C", '"_C')
set("n", "cc", '"_cc')
-- TODO: understand quickfix
-- quickfix navigation
-- set("n", "<C-k", "<cmd>cnext<CR>zz")
-- set("n", "<C-j", "<cmd>cprev<CR>zz")
-- set("n", "<leader>k", "<cmd>lprev<CR>zz")
-- set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- VISUAL ----------------------------------------------------------------------
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")
set("v", ".", ":normal .<CR>")
-- better tabbing
set("v", "<", "<gv", opts)
set("v", ">", ">gv", opts)

-- INSERT ----------------------------------------------------------------------
-- Break inserted text into smaller undo units when we insert some punctuation chars.
local undo_ch = { ",", ".", "!", "?", ";", ":" }
for _, ch in ipairs(undo_ch) do
  set("i", ch, ch .. "<c-g>u")
end

-- COMMAND ---------------------------------------------------------------------
-- allows for preserving copied register
set("x", "p", "\"_dP")
set("x", "c", '"_c')
