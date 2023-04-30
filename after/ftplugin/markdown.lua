-- TODO: add automatic calls to :MarkdownPreview

local set = vim.keymap.set
local opts = {
  wrap = true,
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

if vim.fn.executable("MarkdownPreviewToggle") == 1 then
  set("n", "<F9>", ":MarkdownPreviewToggle<CR>", { silent = true })
end
