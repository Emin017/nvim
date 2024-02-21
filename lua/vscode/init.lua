vim.g.mapleader = " " -- map <leader> to <space>

require('vscode.config.lazy')
require('vscode.plugins')
require('vscode.config.fast-scope')
require('vscode.config.sandwich')

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
