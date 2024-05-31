if (vim.g.vscode) then
	vim.opt.clipboard:append("unnamedplus")
	require('config.vscode')
else
	require('core')
end
