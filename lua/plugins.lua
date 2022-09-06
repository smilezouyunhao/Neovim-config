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
  -- Lualine
  use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
  -- Telescope
  use {'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' }}
  -- Telescope-file-browser
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- LSP
  -- nvim-lsp-installer (Auto install server) 
  use 'williamboman/nvim-lsp-installer'
  -- nvim-lspconfig
  use 'neovim/nvim-lspconfig'

end)
