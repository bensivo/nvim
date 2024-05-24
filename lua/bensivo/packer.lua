-- This file pulled directly from packer-nvim's Github page 
--
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope, fuzzy finder. Find files by name, and grep through your project dir
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  -- TreeSitter, syntax parsing for your editor
  use {
	  'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}
  }

  -- Gruvbox, colorscheme
  use { "ellisonleao/gruvbox.nvim" }

  -- UndoTree, better undos
  use { "mbbill/undotree" }

  -- LSP Zero, language server management and configuration
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  -- {'williamboman/mason.nvim'},
		  -- {'williamboman/mason-lspconfig.nvim'},

		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  -- Mason, a package manager for language servers
  use {
	  "williamboman/mason.nvim"
  }
  -- Mason lspconfig, makes it easier to use mason and lsp together
  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
  }

  -- Toggleterm, better terminal windows
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup()
  end}

end)
