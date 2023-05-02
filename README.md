## Main Components of my Nvim Config
* core
    * keymappings
    * settings
    * autocommands
* plugins
* util
* snippets
* after/ftplugin


## Current Plugins
[x] nvim-cmp
[x] LuaSnip
[x] Treesitter
[x] lspconfig, Mason
[x] Telescope
[x] harpoon
[x] gitsigns.nvim
[x] Comment.nvim
[x] Lualine
[x] indent-blankline.nvim
[x] Colorschemes
    [x] kanagawa
    [x] gruvbox-material


## Current Features
* File parsing using Treesitter and all related goodies
* commenting via Comment.nvim
* snippets completion
* fuzzy finding for:
    * EVERYTHING
    * references
    * open buffers
    * project (ie git files)
    * keymaps
* lsp
    * python, c/c++, rust, lua, bash, markdown
    * jump to def
    * spell checking/correcting
* autocompletion
* the primeagens harpoon convenient navigation
* gitsigns functionality
    * only shows when I toggle on using a keybind
    * keybind to toggle signs

### Future Features
[] keybind to move a split to a tab (<C-w>T)
[] Debugging (nvim-dap)
[] function to search available snippets for a file using telescope popup menu
[] easy folding
    [] function to toggle foldlevel
[] indentline
    [] only show if in a language that does not use {} (ie. python, lua)
[] wildmenu completion
[] nvchad theme switcher
[] go to file functionality
[] markdown functionality
[] LaTeX functionality
[] function/autocommand to resume previous cursor position when opening a file
[] wildmenu compeltion (wilder) -- this may already be accomplished through nvim-cmp


## TODO
[] look into further LuaSnip configuration
[] treesitter keybindings in need of change
    [] init_selection
    [] node_incremental
    [] scope_incremental
    [] node_decremental
