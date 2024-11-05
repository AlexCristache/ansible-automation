vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {"rebelot/kanagawa.nvim", as = "kanagawa" }
  use { "catppuccin/nvim", as = "catppuccin" }
  use {'neanias/everforest-nvim', as = "everforest"}
  use {'shaunsingh/nord.nvim', as="nord"}
  use {'nyoom-engineering/oxocarbon.nvim'}
  use {'folke/tokyonight.nvim', as = "tokyonight"}
  use {'AlexvZyl/nordic.nvim'}
  use {'olivercederborg/poimandres.nvim', as="poimandres"}
  use {'projekt0n/github-nvim-theme'}
  use 'echasnovski/mini.nvim'

  use "lukas-reineke/indent-blankline.nvim"

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function ()
		  vim.cmd('colorscheme rose-pine')
 	  end
  })

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use("folke/zen-mode.nvim")
  use("laytan/cloak.nvim")
  use('nvim-treesitter/playground')
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

end)
