local utils = require("util.utils")
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


require("util.ensure_lazy")
require("lazy").setup({ -- lazy loading plugin manager

  { "folke/todo-comments.nvim", dependencies = {}, opts = {} },
  -- { "folke/trouble.nvim", dependencies = { "nvim-lua/plenary.nvim" },
  --   opts = {
  --     -- config goes here, or leave empty for default settings
  --   },
  -- },

  -- Functionality
  { "christoomey/vim-tmux-navigator", lazy = false }, -- integration with tmux
  require("plugins.treesitter"),
  { "nvim-treesitter/nvim-treesitter-context" },
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
      "hrsh7th/cmp-nvim-lua",
      "onsails/lspkind.nvim",
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

  {"ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {"nvim-lua/plenary.nvim"}
  },
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  { 'numToStr/Comment.nvim', opts = {} }, -- works with treesitter
  require("plugins.aerial"),

  -- Aesthetics
  require("plugins.colors"),
  require("plugins.ui"),
})

require("core")
require("plugins")

utils.set_colorscheme()
vim.cmd [[ echom "<(\"<) <('')> (>\")>" ]]
