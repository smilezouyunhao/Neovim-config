-- =====================================================
--  _   _                 _             ___       _ _   
-- | \ | | ___  _____   _(_)_ __ ___   |_ _|_ __ (_) |_ 
-- |  \| |/ _ \/ _ \ \ / / | '_ ` _ \   | || '_ \| | __|
-- | |\  |  __/ (_) \ V /| | | | | | |  | || | | | | |_ 
-- |_| \_|\___|\___/ \_/ |_|_| |_| |_| |___|_| |_|_|\__|
-- =====================================================                                                     

-- Basic-config
require('basic')
-- Config Plugins
require('plugins')
-- Maps
require('maps')

-- Plugins-config import
-- colorscheme-config
require('plugins.colorscheme')
-- lualine-config
require('plugins.lualine')
-- bufferline-config
require('plugins.bufferline')
-- telescope-config
require('plugins.telescope')
-- nvim-treesitter
require('plugins.treesitter')
-- nvim-tree
require('plugins.nvim-tree')
-- zen-mode
require('plugins.zen-mode')
-- indent-blankline
require('plugins.indent-blankline')
-- gitsigns
require('plugins.gitsigns')
-- dashboard
require('plugins.alpha-nvim')

-- LSP
-- nvim-lsp-installer (Auto install server)
require('lsp.install')
-- lspconfig
require('lsp.lspconfig')
-- nvim-cmp
require('lsp.lsp-cmp')
-- ui
require('lsp.ui')

