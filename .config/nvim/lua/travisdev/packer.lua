-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }
  }

  use {
    'neovim/nvim-lspconfig',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-vsnip'},
      {'hrsh7th/vim-vsnip'},
      {'L3MON4D3/LuaSnip'},
    }
  }

  use 'mfussenegger/nvim-jdtls'

  use 'tpope/vim-fugitive'
  use 'mbbill/undotree'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })
  use 'stevearc/conform.nvim'

  use {
    'trabeast/thymeleaf-compile.nvim',
    branch = 'develop',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      require('thymeleaf.compile').setup({
        pattern = "*.md"
      })
    end
  }
end)
