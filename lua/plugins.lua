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

end)
