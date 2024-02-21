if (vim.g.vscode) then
	vim.opt.clipboard:append("unnamedplus")
	require('vscode')
else
	require('core')
end
