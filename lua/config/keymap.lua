-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

keymap.set('n', 'j', '<Plug>(accelerated_jk_gj)', {})
keymap.set('n', 'k', '<Plug>(accelerated_jk_gk)', {})
-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- move cursor to windows
keymap.set('n', '<C-h>', '<CMD>wincmd h<CR>')
keymap.set('n', '<C-j>', '<CMD>wincmd j<CR>')
keymap.set('n', '<C-l>', '<CMD>wincmd l<CR>')
keymap.set('n', '<C-k>', '<CMD>wincmd k<CR>')
