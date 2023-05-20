local utils = require("util.utils")
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


require("util.ensure_lazy")
require("lazy").setup({ -- lazy loading plugin manager

  -- Functionality
  { "christoomey/vim-tmux-navigator", lazy = false }, -- integration with tmux
  require("plugins.treesitter"),
  require("plugins.lsp"),
  -- Completion Engine
  { 'hrsh7th/nvim-cmp', 
    dependencies = {
      'hrsh7th/cmp-nvim-lsp', 
      "rafamadriz/friendly-snippets",
      'L3MON4D3/LuaSnip', 
      'saadparwaiz1/cmp_luasnip',
      "hrsh7th/cmp-nvim-lua", 
      "onsails/lspkind.nvim", 
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
  },

  -- Fuzzy Finder (files, lsp, etc)
  { 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },

  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },
  { "theHamsta/nvim-dap-virtual-text" },
  { "nvim-telescope/telescope-dap.nvim" },
  { "mfussenegger/nvim-dap-python" },

  require("plugins.harpoon"),
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  { 'numToStr/Comment.nvim', opts = {} }, -- works with treesitter
  { "nvim-treesitter/nvim-treesitter-context" },
  require("plugins.markdown"),

  -- Aesthetics
  require("plugins.colors"),
  require("plugins.ui"),
})

require("core")
require("plugins")

utils.set_colorscheme()
vim.cmd [[ echom "<(\"<) <('')>> (>\")>" ]]
