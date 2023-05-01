local opts = {

  clipboard = "unnamedplus", -- all yank/past use system clipboard
  updatetime = 50,
  timeout = true,
  timeoutlen = 500,
  termguicolors = true,
  pumheight = 20,

  splitright = true,
  splitbelow = true,

  number = true,
  relativenumber = true,
  signcolumn = "yes:1",
  colorcolumn = "80",
  scrolloff = 5,
  showmode = false,

  hlsearch = false,
  ignorecase = true,
  smartcase = true,
  completeopt = { "menuone", "noselect" },
  wildignorecase = true,
  wildignore = { -- this may need moved to autocommand (should be += but that throws error)
    "*/.git/*", "*/__pycache__/*", "*/build/**", 
    "*.jpg", "*.jpeg", "*.png", "*.gif", "*.svg" 
  },

  wrap = false,
  breakindent = true,
  showbreak = "...",
  breakindentopt = { "shift:0" }, -- how far to indent wrapped line

  tabstop = 2,
  shiftwidth = 2,
  softtabstop = 2,
  expandtab = true,

  backup = false,
  swapfile = false,
  undofile = true, -- useful for vim-mundo
  undodir = os.getenv("HOME") .. "/.vim/undodir",

  -- folding
  foldenable = true,
  foldlevel = 10,
  foldnestmax = 10,
  foldmethod = "expr",
  foldexpr = "nvim_treesitter#foldexpr()",
  foldopen = { "block", "mark", "percent", "quickfix", "search", "undo" },
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

vim.diagnostic.config({
  signs = false
})

-- TODO: this does not seem to be working now???
-- set global diagnostic settings
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    update_in_insert = false,
    underline = true,
    -- signs = {
    --   -- severity_limit = "Hint",
    --   false,
    -- },
    virtual_text = {
      severity_limit = "Info",
    },
  }
)              
