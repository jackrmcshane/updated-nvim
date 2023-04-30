local opts = {
  wrap = false,
  sidescroll = 5,
  sidescrolloff = 2,

  tabstop = 4,
  shiftwidth = 4,
  softtabstop = 4,
  expandtab = true,
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

if vim.fn.executable("AsyncRun") == 1 then
  vim.keymap.set("n", "<F9>", ":<C-U>AsyncRun python3 -u \"%\"<CR>", { silent = true })
end
