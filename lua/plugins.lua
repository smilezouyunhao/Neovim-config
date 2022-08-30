local status, packer = pcall(require, "packer")

if not status then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    -- packer可以管理自己
    use 'wbthomason/packer.nvim'

    -- Plugins列表

    -- TokyoNight theme
    use 'folke/tokyonight.nvim'

end)
