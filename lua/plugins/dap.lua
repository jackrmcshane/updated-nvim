require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

vim.keymap.set("n", "<F8>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>i", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<leader>O", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>o", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>b", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")

require("nvim-dap-virtual-text").setup()
require("dapui").setup()

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
