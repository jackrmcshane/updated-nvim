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
- [x] nvim-cmp
- [x] LuaSnip
- [x] Treesitter
- [x] lspconfig, Mason
- [x] Telescope
- [x] harpoon
- [x] gitsigns.nvim
- [x] Comment.nvim
- [x] treesitter-context
- [x] Lualine
- [x] indent-blankline.nvim
- [x] Colorschemes
    - [x] kanagawa
    - [x] gruvbox-material


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
* help documents are opened fullscreen

### Future Features
- [ ] markdown live-previewing functionality
- [ ] Debugging (nvim-dap)
- [ ] keybind to move a split to a tab (<C-w>T)
- [ ] function to search available snippets for a file using telescope popup menu
- [ ] easy folding
    - [] function to toggle foldlevel
- [ ] undo tree
- [ ] indentline
    - [ ] only show if in a language that does not use {} (ie. python, lua)
- [ ] wildmenu completion
- [ ] nvchad theme switcher
- [ ] go to file functionality
- [ ] markdown functionality
- [ ] LaTeX functionality
- [ ] function/autocommand to resume previous cursor position when opening a file
- [ ] wildmenu compeltion (wilder) -- this may already be accomplished through nvim-cmp


## TODO
- [ ] open help in new tab rather than invoking `only` cmd 
- [ ] add class/fn/loop context 
- [ ] resolve tmux-vim-navigator and snippet keybindings
- [ ] context plugin to show class, fn, loop you are under
- [ ] set lualine to only show filename, not path as well
- [x] new keybindings: harpoon: j, k, l, ;
- [ ] new keybindings:
    * <leader>1 --> run program
    * <leader>2 --> debug (dap)
    * <leader>3 --> format buffer
- [ ] |OR| 1, 2, 3, 4 could be used to load particular sessions!!
- [ ] function to set colorscheme based on hostname in init.lua
- [ ] look into sessions & session automation as this will be very powerful with Lazy's lack of hot reloading
- [ ] have cmp show inverted list when it spawns above the cursor position
- [ ] plan out mappings a little better
- [ ] look into further LuaSnip configuration
- [ ] treesitter keybindings in need of change
    - [ ] init_selection
    - [ ] node_incremental
    - [ ] scope_incremental
    - [ ] node_decremental
