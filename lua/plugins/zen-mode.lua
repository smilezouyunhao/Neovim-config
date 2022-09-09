local status, zen_mode = pcall(require, "zen-mode")

if not status then
  print("zen-mode is not installed")
  return
end

-- Zen-mode setup
zen_mode.setup{}

-- Zen-mode mappings
vim.keymap.set("n", "zz", "<Cmd>ZenMode<CR>", {})
