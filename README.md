## Main Components of my Nvim Config
* core
    * keymappings
    * settings
    * autocommands

* plugins
* util
* after directory


## Current Plugins
[] autocomplete (cmp)
[] snippets (LuaSnip)
[x] Treesitter
[] Lsp for various languages (mason, lsp-config)
[] fuzzy finding (telescope)
[x] harpoon
[] Debugging (nvim-dap)
[] gitsigns.nvim
[x] Comment.nvim
[] wildmenu compeltion (wilder)
[x] Lualine
[] indent-blankline.nvim
[x] Colorschemes
    [x] kanagawa
    [x] gruvbox-material


## Current Features
* File parsing using Treesitter and all related goodies
* commenting via Comment.nvim


### Desired Features
[] indentline
    [] only show if in a language that does not use {} (ie. python, lua)
[] fuzzy finding for:
    [] EVERYTHING
    [] references
    [] open buffers
    [] project (ie git files)
    [] keymaps
[] lsp
    [] python, c/c++, rust, lua, bash, markdown
    [] jump to def
[] autocompletion
[] wildmenu completion
[] nvchad theme switcher
[] go to file functionality
[] easy folding
    [] function to toggle foldlevel
[] spell checking/correcting
[] keybind to move a split to a tab (<C-w>T)
[] markdown functionality
[] LaTeX functionality
[] function/autocommand to resume previous cursor position when opening a file
[x] the primeagens harpoon convenient navigation
[x] gitsigns functionality
    [x] only shows when I toggle on using a keybind
    [x] keybind to toggle signs


## TODO
[] look into further LuaSnip configuration
[] files in need of changing
    [] plugins.cmp
    [x] plugins.telescope
    [] plugins.lsp
[] treesitter keybindings in need of change
    [] init_selection
    [] node_incremental
    [] scope_incremental
    [] node_decremental
