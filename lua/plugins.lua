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

  -- LSP
  -- nvim-lsp-installer (Auto install server) 
  use 'williamboman/nvim-lsp-installer'
  -- nvim-lspconfig
  use 'neovim/nvim-lspconfig'

end)
