local opts = {
  wrap = true,
  updatetime = 3, -- "live" updating for preview
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end
