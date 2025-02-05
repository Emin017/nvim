-- https://medium.com/@shaikzahid0713/code-completion-for-neovim-6127401ebec2
-- whichkey.lua

local status_ok, _ = pcall(require, "which-key")
if not status_ok then
	return
end

local setup = {
	plugins = {
		marks = true,    -- shows a list of your marks on ' and `
		registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
		spelling = {
			enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
			suggestions = 20, -- how many suggestions should be shown in the list?
		},
		-- the presets plugin, adds help for a bunch of default keybindings in Neovim
		-- No actual key bindings are created
		presets = {
			operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
			motions = true,   -- adds help for motions
			text_objects = true, -- help for text objects triggered after entering an operator
			windows = true,   -- default bindings on <c-w>
			nav = true,       -- misc bindings to work with windows
			z = true,         -- bindings for folds, spelling and others prefixed with z
			g = true,         -- bindings for prefixed with g
		},
	},
	-- add operators that will trigger motion and text object completion
	-- to enable all native operators, set the preset / operators plugin above
	-- operators = { gc = "Comments" },
	key_labels = {
		-- override the label used to display some keys. It doesn't effect WK in any other way.
		-- For example:
		-- ["<space>"] = "SPC",
		-- ["<cr>"] = "RET",
		-- ["<tab>"] = "TAB",
	},
	icons = {
		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
		separator = "➜", -- symbol used between a key and it's label
		group = "+", -- symbol prepended to a group
	},
	popup_mappings = {
		scroll_down = "<c-d>", -- binding to scroll down inside the popup
		scroll_up = "<c-u>", -- binding to scroll up inside the popup
	},
	window = {
		border = "rounded",     -- none, single, double, shadow
		position = "bottom",    -- bottom, top
		margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
		padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
		winblend = 0,
	},
	layout = {
		height = { min = 4, max = 25 },                                            -- min and max height of the columns
		width = { min = 20, max = 50 },                                            -- min and max width of the columns
		spacing = 3,                                                               -- spacing between columns
		align = "left",                                                            -- align columns left, center or right
	},
	ignore_missing = true,                                                       -- enable this to hide mappings for which you didn't specify a label
	hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
	show_help = true,                                                            -- show help message on the command line when the popup is visible
	triggers = "auto",                                                           -- automatically setup triggers
	-- triggers = {"<leader>"} -- or specify a list manually
	triggers_blacklist = {
		-- list of mode / prefixes that should never be hooked by WhichKey
		-- this is mostly relevant for key maps that start with a native binding
		-- most people should not need to change this
		i = { "j", "k" },
		v = { "j", "k" },
	},
}


local mappings = { {
	mode = { "n", "v" }, -- NORMAL and VISUAL mode
	{ "<leader>a", "<cmd>Alpha<cr>",                              desc = "Alpha" },
	{ "<leader>e", "<cmd>NvimTreeToggle<cr>",                     desc = "Explorer" },
	{ "<leader>n", "<cmd>NvimTreeFocus<cr>",                      desc = "Focus on Explorer" },
	{ "<leader>k", "<cmd>bdelete<CR>",                            desc = "Kill Buffer" },
	{ "<leader>m", "<cmd>Mason<cr>",                              desc = "Mason" },
	{ "<leader>p", "<cmd>Lazy<CR>",                               desc = "Plugin Manager" },
	{ "<leader>q", "<cmd>wqall!<CR>",                             desc = "Quit" },
	{ "<leader>r", "<cmd>lua vim.lsp.buf.format{async=true}<cr>", desc = "Reformat Code" },
	{ "<leader>H", "zt",                                          desc = "Move current line to the top" },
},
	{
		mode = { "n", "v" }, -- NORMAL and VISUAL mode
		-- Language Support
		{ "<leader>l",  group = "LSP Info" },
		{ "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>",                 desc = "Code Action" },
		{ "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>",                  desc = "Go to Definition" },
		{ "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<cr>",                 desc = "Go to Declaration" },
		{ "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<cr>",              desc = "Show Implementation" },
		{ "<leader>lo", "<cmd>lua vim.lsp.buf.type_definition()<cr>",             desc = "Type definition" },
		{ "<leader>lr", "<cmd>lua vim.lsp.buf.references()<cr>",                  desc = "Show References" },
		{ "<leader>lh", "<cmd>lua vim.lsp.buf.signature_help()<cr>",              desc = "Signature Help" },
		{ "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>",                    desc = "CodeLens Action" },
		{ "<leader>lR", "<cmd>lua vim.lsp.buf.rename()<cr>",                      desc = "Rename" },
		{ "<leader>lf", "<cmd>lua vim.diagnostic.open_float()<cr>",               desc = "Open Float" },
		{ "<leader>lI", "<cmd>LspInfo<cr>",                                       desc = "Info" },
		{ "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>",                desc = "Document Symbols" },
		{ "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",       desc = "Workspace Symbols" },

		{ "<leader>h",  group = "Hop" },
		{ "<leader>ha", "<cmd>HopAnywhere<cr>",                                   desc = "HopAnywhere" },
		{ "<leader>hw", "<cmd>HopWord<cr>",                                       desc = "Word" },
		{ "<leader>hl", "<cmd>HopLine<cr>",                                       desc = "Line" },
		{ "<leader>hc", "<cmd>HopChar1<cr>",                                      desc = "Char" },
		{ "<leader>ht", "<cmd>HopChar2<cr>",                                      desc = "Char2" },

		-- Telescope
		{ "<leader>f",  group = "File Search" },
		{ "<leader>fc", "<cmd>Telescope colorscheme<cr>",                         desc = "Colorscheme" },
		{ "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Find files" },
		{ "<leader>ft", "<cmd>Telescope live_grep <cr>",                          desc = "Find Text Pattern" },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>",                            desc = "Recent Files" },

		-- Search
		{ "<leader>s",  group = "Search" },
		{ "<leader>sh", "<cmd>Telescope help_tags<cr>",                           desc = "Find Help" },
		{ "<leader>sm", "<cmd>Telescope man_pages<cr>",                           desc = "Man Pages" },
		{ "<leader>sr", "<cmd>Telescope registers<cr>",                           desc = "Registers" },
		{ "<leader>sk", "<cmd>Telescope keymaps<cr>",                             desc = "Keymaps" },
		{ "<leader>sc", "<cmd>Telescope commands<cr>",                            desc = "Commands" },
		-- Floating Terminal
		{ "<leader>t",  group = "Floating Terminal" },
		{ "<leader>to", "<cmd>lua require('FTerm').open()<cr>",                   desc = "Open Floating Terminal" },
		{ "<leader>tc", "<cmd>lua require('FTerm').close()<cr>",                  desc = "Close Floating Terminal" },
		{ "<leader>tt", "<cmd>lua require('FTerm').toggle()<cr>",                 desc = "Toggle Floating Terminal" },
		-- Window
		{ "<leader>w",  group = "Window" },
		{ "<leader>ws", "<cmd>wincmd s<cr>",                                      desc = "Split window below" },
		{ "<leader>wv", "<cmd>wincmd v<cr>",                                      desc = "Split window right" },
		{ "<leader>wh", "<cmd>wincmd h<cr>",                                      desc = "Move cursor to window-left" },
		{ "<leader>wj", "<cmd>wincmd j<cr>",                                      desc = "Move cursor to window-below" },
		{ "<leader>wl", "<cmd>wincmd l<cr>",                                      desc = "Move cursor to window-right" },
		{ "<leader>wk", "<cmd>wincmd k<cr>",                                      desc = "Move cursor to window-up" },
		{ "<leader>we", proxy = "<C-w>=",                                         desc = "make split windows equal width & height" },
		{ "<leader>wx", ":close<CR>",                                             desc = "close current split window" },
		-- window management
		{ "<leader>wo", ":tabnew<CR>",                                            desc = "open new tab" },
		{ "<leader>wx", ":tabclose<CR>",                                          desc = "close current tab" },
		{ "<leader>wn", ":tabn<CR>",                                              desc = "go to next tab" },
		{ "<leader>wp", ":tabp<CR>",                                              desc = "go to previous tab" },
		-- LazyGit
		{ "<leader>gg", "<CMD>LazyGit<CR>",                                       desc = "Open LazyGit" },
	} }

local wk = require("which-key")
wk.setup(setup)
wk.add(mappings)
