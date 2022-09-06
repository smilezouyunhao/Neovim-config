-- ============================================================
--   ____      _                     _                         
--  / ___|___ | | ___  _ __ ___  ___| |__   ___ _ __ ___   ___ 
-- | |   / _ \| |/ _ \| '__/ __|/ __| '_ \ / _ \ '_ ` _ \ / _ \
-- | |__| (_) | | (_) | |  \__ \ (__| | | |  __/ | | | | |  __/
--  \____\___/|_|\___/|_|  |___/\___|_| |_|\___|_| |_| |_|\___|
--                                                             
-- ============================================================

local colorscheme = "tokyonight"
local status, tokyonight = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status then
  print(colorscheme .. " theme can't found!")
  return
end

-- Tokyonight-config
-- Style config ('storm', 'night', 'day')
vim.g.tokyonight_style = "night"
-- Make comments italic
vim.g.tokyonight_italic_comments = true
-- Set a darker background on sidebar-like windows
vim.g.tokyonight_sidebars = { "packer" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
