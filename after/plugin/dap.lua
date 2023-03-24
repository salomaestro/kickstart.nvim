local opts = { silent = true }

local dap_cmd = ':lua require("dap")'


vim.keymap.set('n', '<leader>dc', dap_cmd .. '.continue()<cr>', opts)
vim.keymap.set('n', '<leader>di', dap_cmd .. '.step_into()<cr>', opts)
vim.keymap.set('n', '<leader>do', dap_cmd .. '.step_over()<cr>', opts)
vim.keymap.set('n', '<leader>du', dap_cmd .. '.step_out()<cr>', opts)
vim.keymap.set('n', '<leader>dx', dap_cmd .. '.close()<cr>', opts)
vim.keymap.set('n', '<Leader>bb', dap_cmd .. '.toggle_breakpoint()<cr>', opts)
vim.keymap.set('n', '<Leader>BB', dap_cmd .. '.set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>', opts)
vim.keymap.set('n', '<Leader>lp', dap_cmd .. '.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<cr>', opts)

-- dapui
vim.keymap.set('n', '<leader>dg', ':lua require("dapui").toggle()<cr>', opts)
