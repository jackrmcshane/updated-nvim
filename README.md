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
[] convenient navigation (harpoon)
[] Debugging (nvim-dap)
[] gitsigns.nvim
[x] Comment.nvim
[] wildmenu compeltion (wilder)
[x] Lualine
[] indent-blankline.nvim
[] Colorschemes
    [x] kanagawa
    [x] gruvbox-material


## Current Features
* File parsing using Treesitter and all related goodies
* commenting via Comment.nvim


### Desired Features
[] the primeagens harpoon convenient navigation
[] fuzzy finding for:
    [] EVERYTHING
    [] references
    [] open buffers
    [] project (ie git files)
[] lsp
    [] python, c/c++, rust, lua, bash, markdown
    [] jump to def
[] colorschemes
    [] more of them
[] autocompletion
[] wildmenu completion
[] nvchad theme switcher
[] go to file functionality
[] easy folding
[] spell checking/correcting


## TODO LIST
[] TODO: outline core desired plugins
[x] add core.settings
[] TODO: add core.mappings
[] TODO: add core.autocommands
[] TODO: add filetype-specific settings in after/ftplugin
## keymaps to address
[] treesitter
    [] init_selection
    [] node_incremental
    [] scope_incremental
    [] node_decremental
