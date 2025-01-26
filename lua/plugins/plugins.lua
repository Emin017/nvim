return {
	-- Alpha (Dashboard)
	-- Added this plugin to initial configuration
	{
		'goolord/alpha-nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		lazy = true,
		config = function ()
			require'alpha'.setup(require'alpha.themes.startify'.config)
		end
	},

	-- startuptime
	{
		'dstein64/vim-startuptime',
		-- lazy-load on a command
		cmd = 'StartupTime',
		-- init is called during startup. Configuration for vim plugins typically should be set in an init function
		init = function()
			vim.g.startuptime_tries = 10
		end,
	},

	-- neodev
	'folke/neodev.nvim',

	-- lightspeed
	'ggandor/lightspeed.nvim', -- https://github.com/ggandor/lightspeed.nvim
	{
		-- Hop (Better Navigation)
		'phaazon/hop.nvim',
		branch = 'v2',
	},

	-- which-key
	{
		'folke/which-key.nvim',
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},

	},

	-- neoconf
	{ 'folke/neoconf.nvim', cmd = 'Neoconf'  },

	-- telescope
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim',
				         'nvim-telescope/telescope-fzf-native.nvim',
		},
		cmd = 'Telescope',
		keys = {
			{ '<leader>fb', '<cmd>Telescope buffers<cr>',    desc = 'Buffers' },
			{ '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
			{ '<leader>fg', '<cmd>Telescope live_grep<cr>',  desc = 'live grep' },
			{ '<leader>fh', '<cmd>Telescope help_tags<cr>',  desc = 'help' },
		},
		opts = {
			-- this is the same opts one passes to the setup() function
			defaults = {
				-- default configs
			},
			pickers = {},
			extensions = {},
		},
	},
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
	},
	-- nvim-tree
	{
		'nvim-tree/nvim-tree.lua',
		version = '*',
		lazy = false,
		keys = {
			{ '<leader>ft', '<cmd>NvimTreeToggle<cr>', desc = 'NvimTree Toggle' },
		},
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
		config = function()
			require('nvim-tree').setup {}
		end,
	},

	-- nvim-treesitter
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		config = function ()
			local configs = require('nvim-treesitter.configs')
			configs.setup({
				ensure_installed = { 'c', 'cpp', 'lua', 'vim', 'vimdoc', 'query', 'elixir', 'heex', 'javascript', 'html','dockerfile', 'markdown', 'nix', 'scala', 'verilog', 'python', 'latex', 'matlab'}, 
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			})
		end
	},
	{ 'numToStr/FTerm.nvim' },
	{
		'mikesmithgh/kitty-scrollback.nvim',
		enabled = true,
		lazy = true,
		cmd = { 'KittyScrollbackGenerateKittens', 'KittyScrollbackCheckHealth' },
		event = { 'User KittyScrollbackLaunch' },
		-- version = '*', -- latest stable version, may have breaking changes if major version changed
		-- version = '^4.0.0', -- pin major version, include fixes and features that do not have breaking changes
		config = function()
			require('kitty-scrollback').setup()
		end,
	},
	'rainbowhxch/accelerated-jk.nvim',
	"LunarVim/bigfile.nvim",
	"wakatime/vim-wakatime",
	{
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("telescope").load_extension("lazygit")
    end,
	}
}
