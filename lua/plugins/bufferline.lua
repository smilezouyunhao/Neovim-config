-- ==============================================
--  ____         __  __           _ _            
-- | __ ) _   _ / _|/ _| ___ _ __| (_)_ __   ___ 
-- |  _ \| | | | |_| |_ / _ \ '__| | | '_ \ / _ \
-- | |_) | |_| |  _|  _|  __/ |  | | | | | |  __/
-- |____/ \__,_|_| |_|  \___|_|  |_|_|_| |_|\___|
-- ==============================================

local status, bufferline = pcall(require, "bufferline")

if not status then
  print("bufferline is not installed")
  return
end

-- Bufferline setup
bufferline.setup{
  options = {
    tab_size = 19,

    indicator = {
      style = 'icon',
    },

    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        highlight = "Directory",
        separator = true
      }
    },

    -- diagnostics display
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " " or (e == "warning" and " " or "")
        s = s .. n .. sym
      end
      return s
    end,
  }
}

-- Bufferline mappings
vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
vim.keymap.set("n", "gb", "<Cmd>BufferLinePick<CR>", {})
vim.keymap.set("n", "<C-w>", "<Cmd>BufferLinePickClose<CR>", {})
