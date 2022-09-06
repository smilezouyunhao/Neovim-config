-- =================================
--  _                _ _            
-- | |   _   _  __ _| (_)_ __   ___ 
-- | |  | | | |/ _` | | | '_ \ / _ \
-- | |__| |_| | (_| | | | | | |  __/
-- |_____\__,_|\__,_|_|_|_| |_|\___|
-- =================================

local status, lualine = pcall(require, "lualine")

if not status then
  print("lualine is not installed")
  return
end

-- colors setting
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

-- theme setting
local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

lualine.setup {
  options = {
    icons_enabled = true,
    theme = bubbles_theme ,
    component_separators = { left = '', right = '' },
    -- section_separators = { left = " ", right = "" },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 
      { 
        'filename',
        file_status = true, -- displays file status (readonly status, modified status)
        path = 0 -- 0 = just filename, 1 = relative path, 2 = absolute path
      },
      'branch',
      'filesize',
      {
        'diagnostics',
        sources = { "nvim_diagnostic" }, -- Table of diagnostic sources
        symbols = { error = ' ', warn = ' ', info = ' ',
        hint = ' ' }
      }
    },
    lualine_c = {}, 
    lualine_x = {},
    lualine_y = { 
      'encoding',
      {
        'fileformat',
        symbols = {
          unix = '', -- e712
          dos = '',  -- e70f
          mac = '',  -- e711
        }
      },
      {
        'filetype',
        colored = true,   -- Displays filetype icon in color if set to true
        icon_only = false, -- Display only an icon for filetype
        icon = { align = 'left' }, -- Display filetype icon on the left hand side
      },
      'progress'
    },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  tabline = {},
  extensions = {},
}
