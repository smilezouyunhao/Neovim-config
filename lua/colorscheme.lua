local colorscheme = "tokyonight"
local status, tokyonight = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status then
    print(colorscheme .. " theme can't found!")
    return
end

-- Style config ('storm', 'night', 'day')
vim.g.tokyonight_style = "night"

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
