local fterm = require("FTerm")

local htop = fterm:new({
    ft = 'fterm_htop',
    cmd = "htop"
})

-- require('FTerm').open()
vim.api.nvim_create_user_command('FTermOpen', require('FTerm').open, { bang = true })

-- require('FTerm').close()
vim.api.nvim_create_user_command('FTermClose', require('FTerm').close, { bang = true })

-- require('FTerm').exit()
vim.api.nvim_create_user_command('FTermExit', require('FTerm').exit, { bang = true })

-- require('FTerm').toggle()
vim.api.nvim_create_user_command('FTermToggle', require('FTerm').toggle, { bang = true })

-- KeyBindings
vim.keymap.set('n', '<C-s>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-i>', '<C-\\><C-n>:FTermToggle<CR>')

vim.keymap.set('n', '<C-b>', function()
    htop:toggle()
end)
