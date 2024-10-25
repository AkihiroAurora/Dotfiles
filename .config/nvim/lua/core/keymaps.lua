-- set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- For conciseness
local opts = { noremap = true, silent = true }

-- [[ Basic Keymaps]]
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- open Lazy gui
vim.keymap.set('n', '<leader>L', '<cmd> Lazy <CR>', { noremap = true, silent = true, desc = 'Open Lazy menu' })
