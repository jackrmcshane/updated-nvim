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

-- TODO: understand this before adding
-- vim.cmd [[
--   augroup NvimTerminal
--     autocmd!
--     autocmd BufWinEnter,WinEnter term://* startinsert
--     autocmd BufLeave term://* stopinsert
-- ]]
