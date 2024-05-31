vim.g.mapleader = " " -- map <leader> to <space>

require('config.vscode.config.lazy')
require('config.vscode.plugins')
require('config.vscode.config.fast-scope')
require('config.vscode.config.sandwich')

vim.cmd [[set clipboard+=unnamedplus]]
vim.cmd [[set shortmess+=c]]
vim.cmd [[set relativenumber]]
vim.cmd [[set incsearch]]

-- map gc for comment
vim.cmd [[
xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine 
]]
