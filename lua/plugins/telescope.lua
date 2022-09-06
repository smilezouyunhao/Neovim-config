-- ===========================================
--  _____    _                                
-- |_   _|__| | ___  ___  ___ ___  _ __   ___ 
--   | |/ _ \ |/ _ \/ __|/ __/ _ \| '_ \ / _ \
--   | |  __/ |  __/\__ \ (_| (_) | |_) |  __/
--   |_|\___|_|\___||___/\___\___/| .__/ \___|
--                                |_|         
-- ===========================================

local status, telescope = pcall(require, "telescope")

if not status then
  print("telescope is not installed")
  return
end

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = telescope.extensions.file_browser.actions
local builtin = require("telescope.builtin")

-- Mappings
-- Use find_files
vim.keymap.set('n', '<A-f>',
  function()
    builtin.find_files({
    no_ignore = false,
    hidden = true
  })
end)
-- Use live_grep
vim.keymap.set('n', '<A-r>', function()
  builtin.live_grep()
end)


-- Telescope setup
telescope.setup{
  -- Default configuration for telescope goes here:
  defaults = {
    initial_mode = "normal"
  },

  -- Default configuration for builtin pickers goes here:
  pickers = {
    find_files = {
      initial_mode = "normal",
      -- theme = "dropdown",
    },
    live_grep = {
      initial_mode = "insert"
    }
  },

  -- Your extension configuration goes here:
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
        },
      },
    },
  },
}

-- plugins load
telescope.load_extension("file_browser")
-- file_browser mappings
vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)
