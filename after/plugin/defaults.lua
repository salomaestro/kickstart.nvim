local opts = { silent = true }

vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Move visual selected lines with indentation (wow).
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv")

-- Concatenates line below cursor but does not move cursor
vim.keymap.set('n', 'J', "mzJ`z")

-- Center cursor when hopping half page.
vim.keymap.set('n', '<C-d>', "<C-d>zz")
vim.keymap.set('n', '<C-u>', "<C-u>zz")

-- Center cursor when looking through find
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', 'n', 'nzzzv')

-- Store what was yanked in a void buffer (can therefore put multiple times)
vim.keymap.set('x', '<leader>p', "\"_dP")

-- Open useful telescope help windows.
vim.keymap.set('n', '<leader>th', ":Telescope help_tags <cr>")
vim.keymap.set('n', '<leader>tk', ":Telescope keymaps <cr>")

-- vim.keymap.set('n', '<C-j>', "<cmd>cprev<cr>zz")
-- vim.keymap.set('n', '<C-k>', "<cmd>cnext<cr>zz")
vim.keymap.set('n', '<leader>j', "<cmd>lprev<cr>zz")
vim.keymap.set('n', '<leader>k', "<cmd>lnext<cr>zz")

vim.g.table_mode_corners = '|'
vim.keymap.set('n', '<leader>mp', ":MarkdownPreview <cr>")

local t_opts = { silent = true }
-- vim.keymap.set('n', '<leader>tn', ":FloatermToggle <cr>")
vim.keymap.set('t', '<esc>', '<C-\\><C-N>', t_opts)

-- Python reorder imports command
local fname = vim.api.nvim_buf_get_name(0)
vim.keymap.set('n', '<leader>ri', ":!reorder-python-imports " .. fname .. "<cr><cr>")

-- Tab keybinds
vim.keymap.set('n', '<leader>te', ':tabnew<cr>:Explore<cr>')
vim.keymap.set('n', '<leader>tn', ':tabnew<cr>')

-- Easier window navigation
vim.keymap.set('n', '<c-h>', '<c-w>h', opts)
vim.keymap.set('n', '<c-j>', '<c-w>j', opts)
vim.keymap.set('n', '<c-k>', '<c-w>k', opts)
vim.keymap.set('n', '<c-l>', '<c-w>l', opts)

-- Naviagate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert newline without moving cursor and is repeatable
vim.keymap.set('n', '<leader>o', ':<c-u>call append(line("."),   repeat([""], v:count1))<CR>', opts)
vim.keymap.set('n', '<leader>O', ':<c-u>call append(line(".")-1,   repeat([""], v:count1))<CR>', opts)
