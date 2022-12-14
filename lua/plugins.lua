-- =================================================================
--  ____  _             _                ___           _        _ _ 
-- |  _ \| |_   _  __ _(_)_ __  ___     |_ _|_ __  ___| |_ __ _| | |
-- | |_) | | | | |/ _` | | '_ \/ __|_____| || '_ \/ __| __/ _` | | |
-- |  __/| | |_| | (_| | | | | \__ \_____| || | | \__ \ || (_| | | |
-- |_|   |_|\__,_|\__, |_|_| |_|___/    |___|_| |_|___/\__\__,_|_|_|
--                |___/                                             
-- =================================================================

local status, packer = pcall(require, "packer")

if not status then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- packer manage itself
  use 'wbthomason/packer.nvim'

  -- Plugins List

  -- TokyoNight theme
  use 'folke/tokyonight.nvim'
  -- Nvim-web-devicons
  use 'kyazdani42/nvim-web-devicons'
  -- Lualine
  use 'nvim-lualine/lualine.nvim'
  -- Bufferline
  use 'akinsho/bufferline.nvim'
  -- Telescope
  use {'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' }}
  -- Telescope-file-browser
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- Nvim-treesitter
  use {'nvim-treesitter/nvim-treesitter', run = function() require('nvim-treesitter.install').update({ with_sync = true }) end}
  -- Nvim-tree
  use 'kyazdani42/nvim-tree.lua'
  -- Zen-mode
  use 'folke/zen-mode.nvim'
  -- Indent-blankline
  use 'lukas-reineke/indent-blankline.nvim'
  -- Gitsigns
  use 'lewis6991/gitsigns.nvim'
  -- alpha-nvim
  use 'goolord/alpha-nvim'

  -- LSP
  -- nvim-lsp-installer (Auto install server) 
  use 'williamboman/nvim-lsp-installer'
  -- nvim-lspconfig
  use 'neovim/nvim-lspconfig'
  -- nvim-cmp(completion engine)
  use {
    'hrsh7th/nvim-cmp', requires = {
      'hrsh7th/vim-vsnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'onsails/lspkind-nvim',
      'hrsh7th/cmp-path'
    }
  }
  -- lspsaga
  use 'tami5/lspsaga.nvim'

end)
