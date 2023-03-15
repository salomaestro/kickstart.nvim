local keymap = vim.keymap.set
local opts = { silent = true }

keymap('n', '§', ':Neotree reveal toggle<cr>', opts)
keymap('n', '<leader>bf', ':Neotree toggle current reveal_force_cwd<cr>', opts)
keymap('n', '<leader>bt', ':Neotree toggle show buffers right<cr>', opts)
keymap('n', '<leader>bg', ':Neotree float git_status<cr>', opts)

