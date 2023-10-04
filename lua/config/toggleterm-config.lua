local fterm = require("FTerm")

local gitui = fterm:new({
    ft = 'fterm_gitui', -- You can also override the default filetype, if you want
    cmd = "gitui",
    dimensions = {
        height = 0.9,
        width = 0.9
    }
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
vim.keymap.set('n', '<C-h>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-h>', '<C-\\><C-n>:FTermToggle<CR>')
