-- ============================================
--  _____                   _ _   _            
-- |_   _| __ ___  ___  ___(_) |_| |_ ___ _ __ 
--   | || '__/ _ \/ _ \/ __| | __| __/ _ \ '__|
--   | || | |  __/  __/\__ \ | |_| ||  __/ |   
--   |_||_|  \___|\___||___/_|\__|\__\___|_|   
-- ============================================

local status, treesitter = pcall(require, "nvim-treesitter.configs")

if not status then
  print("nvim-treesitter is not installed")
  return
end

treesitter.setup{
  -- A list of parser names, or "all"
  ensure_installed = { "python", "lua", "c", "cpp" },

  highlight = {
    enable = true,
    disable = {},
    -- Disable vim highlight
    additional_vim_regex_highlighting = false,
  },

  -- Incremental selection
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<CR>",
      scope_incremental = "<BS>",
      node_decremental = "<TAB>",
    },
  },

  indent = {
    enable = true,
    disable = {},
  },
}
