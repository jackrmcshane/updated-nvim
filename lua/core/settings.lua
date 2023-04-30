local opts = {

  clipboard = "unnamedplus", -- all yank/past use system clipboard
  updatetime = 50,
  timeout = true,
  timeoutlen = 250,
  termguicolors = true,

  splitright = true,
  splitbelow = true,

  number = true,
  relativenumber = true,
  signcolumn = "yes",
  colorcolumn = "80",
  scrolloff = 5,
  showmode = false,

  hlsearch = false,
  ignorecase = false,
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

  tabstop = 4,
  shiftwidth = 4,
  softtabstop = 4,
  expandtab = true,

  backup = false,
  swapfile = false,
  undofile = true, -- useful for vim-mundo
  undodir = os.getenv("HOME") .. "/.vim/undodir",

  -- folding
  -- foldenable = true,
  -- foldlevel = 10,
  -- foldnestmax = 10,
  -- foldmethod = "expr",
  -- foldexpr = "nvim_treesitter#foldexpr()",
  -- foldopen = { "block", "mark", "percent", "quickfix", "search", "undo" },
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end
