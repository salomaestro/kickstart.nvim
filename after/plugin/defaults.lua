local keymap = vim.keymap.set
local opts = { silent = true }

vim.o.scrolloff = 10
vim.o.colorcolumn = '80'
vim.opt.relativenumber = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.linebreak = true

-- keymap('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
keymap('n', '<leader>gs', vim.cmd.Git, { desc = 'Git status' })
keymap('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open Explore' })

-- Move visual selected lines with indentation (wow).
keymap('v', 'J', ":m '>+1<cr>gv=gv", opts)
keymap('v', 'K', ":m '<-2<cr>gv=gv", opts)

-- Concatenates line below cursor but does not move cursor
keymap('n', 'J', 'mzJ`z')

-- Center cursor when hopping half page.
keymap('n', '<C-d>', '<C-d>zz')
keymap('n', '<C-u>', '<C-u>zz')

-- Center cursor when looking through find
keymap('n', 'N', 'Nzzzv')
keymap('n', 'n', 'nzzzv')

-- Store what was yanked in a void buffer (can therefore put multiple times)
keymap('x', '<leader>p', '"_dP')

-- Open useful telescope help windows.
-- keymap('n', '<leader>th', '<cmd>Telescope help_tags <cr>', opts) already in init.lua
keymap('n', '<leader>sk', '<cmd>Telescope keymaps <cr>', opts, { desc = '[S]earch [K]eymaps' })
keymap('n', '<leader>st', '<cmd>TodoTrouble <cr>', { desc = '[S]ee [T]odo trouble' })

-- keymap('n', '<C-j>', "<cmd>cprev<cr>zz")
-- keymap('n', '<C-k>', "<cmd>cnext<cr>zz")
keymap('n', '<leader>j', '<cmd>lprev<cr>zz', opts)
keymap('n', '<leader>k', '<cmd>lnext<cr>zz', opts)

-- vim.g.table_mode_corners = '|'
-- keymap('n', '<leader>mp', '<cmd>MarkdownPreview <cr>', opts)

-- keymap('n', '<leader>tn', ":FloatermToggle <cr>")
keymap('t', '<esc>', '<C-\\><C-N>', opts)

-- Python reorder imports command
local get_buf_fname = function()
	return vim.api.nvim_buf_get_name(0)
end
keymap('n', '<leader>ri', ':!reorder-python-imports ' .. get_buf_fname() .. '<cr><cr>', opts)

-- Tab keybinds
keymap('n', '<leader>te', '<cmd>tabnew<cr><cmd>Explore<cr>', opts)
keymap('n', '<leader>tn', '<cmd>tabnew<cr>', opts)
keymap('n', '<leader>tc', '<cmd>tabclose<cr>', opts)

-- Easier window navigation
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

-- Easier window resizing
keymap('n', '<leader>gh', '<cmd>vertical resize +8<cr>', opts)
keymap('n', '<leader>gj', '<cmd>resize +8<cr>', opts)
keymap('n', '<leader>gk', '<cmd>resize -8<cr>', opts)
keymap('n', '<leader>gl', '<cmd>vertical resize -8<cr>', opts)

-- Naviagate buffers
keymap('n', '<s-l>', '<cmd>bnext<cr>', opts)
keymap('n', '<s-h>', '<cmd>bprevious<cr>', opts)

-- insert newline without moving cursor and is repeatable
keymap('n', '<leader>o', ':<c-u>call append(line("."),   repeat([""], v:count1))<cr>', opts)
keymap('n', '<leader>O', ':<c-u>call append(line(".")-1,   repeat([""], v:count1))<cr>', opts)

-- Glow markdown preview
keymap('n', '<leader>mp', '<cmd>Glow<cr>', opts)
