local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
		install_path })
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Colorschemes
	use 'joshdick/onedark.vim'
	use 'tomasiser/vim-code-dark'
	use "rafamadriz/neon"

	use 'folke/which-key.nvim'

	-- Leap.nvim
	use 'ggandor/leap.nvim'

	-- nvim-tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
	}

	-- Completion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	-- Lua snip
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- Commenting
	-- use 'JoosepAlviste/nvim-ts-context-commentstring'
	use 'tpope/vim-commentary'

	-- Treesitter
	use 'nvim-treesitter/nvim-treesitter'

	-- LSP & Debugging
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'

	use 'mfussenegger/nvim-dap'
	use 'simrat39/rust-tools.nvim'


	-- Nice to have "Rice"
	use { -- Show indentation lines.
		"lukas-reineke/indent-blankline.nvim",
		config = function() require("indent_blankline").setup {
			show_current_context = true,
			show_current_context_start = true,
		} end
	}

	-- use {
	-- 	'https://github.com/p00f/nvim-ts-rainbow',
	-- 	config = function() require'nvim-treesitter.configs'.setup{} end,
	-- 	requires = {{'nvim-treesitter/nvim-treesitter'}}
	-- }


	-- Auto pairs
	use "windwp/nvim-autopairs"
end)
