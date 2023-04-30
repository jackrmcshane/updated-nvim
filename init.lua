--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


require("util.ensure_lazy")
require("lazy").setup({ -- lazy loading plugin manager

  -- Functionality
  { "christoomey/vim-tmux-navigator", lazy = false }, -- integration with tmux
  require("plugins.treesitter"),
  require("plugins.lsp"),
  { 'hrsh7th/nvim-cmp', -- Autocompletion
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  },

  -- Fuzzy Finder (files, lsp, etc)
  { 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },

  require("plugins.harpoon"),
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  { 'numToStr/Comment.nvim', opts = {} }, -- works with treesitter

  -- Aesthetics
  require("plugins.colors"),
  require("plugins.ui"),
})

require("core")
require("plugins")

vim.cmd [[ colorscheme kanagawa ]]
vim.cmd [[ echom "<(\"<) <('')>> (>\")>" ]]
