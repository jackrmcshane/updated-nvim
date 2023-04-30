--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


require("util.ensure_lazy")
require("lazy").setup({ -- lazy loading plugin manager

  -- Functionality
  { "christoomey/vim-tmux-navigator", lazy = false }, -- integration with tmux
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  require("plugins.treesitter"),

  -- Aesthetics
  require("plugins.colors"),
  require("plugins.ui"),
})

require("core")

vim.cmd [[ colorscheme kanagawa ]]
vim.cmd [[ echom "<(\"<) <('')>> (>\")>" ]]
