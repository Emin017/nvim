vim.g.mapleader = ' ' -- map <leader> to <space>

require 'config.lazy'
-- config status bar
require('lualine').setup()

require'hop'.setup()

require 'config.alpha-config'
require 'config.keymap'
require 'config.lsp-config'
require 'config.mason'
require 'config.telescope'
require 'config.toggleterm-config'
require 'config.whichkey'
require 'config.largefile'
require 'config.accelerate'
-- require "config.coc"

vim.cmd [[set clipboard+=unnamedplus]]
vim.cmd [[set shortmess+=c]]
vim.cmd [[set relativenumber]]
vim.cmd [[set incsearch]]
-- set tab as 4 space
vim.cmd [[set smartindent]]
vim.cmd [[set shiftwidth=4]]
vim.cmd [[set tabstop=4]]
vim.wo.number = true

-- tokynight-night theme
vim.cmd.colorscheme 'tokyonight-night'
