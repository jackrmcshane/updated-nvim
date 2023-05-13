vim.cmd [[
  augroup StopNewLineComments
    autocmd!
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  augroup end
]]

vim.cmd [[
  augroup RemoveWhitespace
    autocmd!
    autocmd BufWritePre * %s/\s+$//e
    autocmd BufWritePre * %s/\n+\$//e
  augroup end
]]

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]


-- TODO: find a better way to do this!
-- TODO: find a way to automatically open help windows into a new tab
-- that way can use `:q` to close the window, rather than using `<C-o>`
-- when entering/opening a help buffer,
-- make it the `only` visible window
vim.cmd [[
  augroup HelpDocsEnter
  autocmd! filetype help only
  augroup end
]]

-- TODO: understand this before adding
-- vim.cmd [[
--   augroup NvimTerminal
--     autocmd!
--     autocmd BufWinEnter,WinEnter term://* startinsert
--     autocmd BufLeave term://* stopinsert
-- ]]
