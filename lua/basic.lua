-- =========================================================
--  ____            _                            __ _       
-- | __ )  __ _ ___(_) ___       ___ ___  _ __  / _(_) __ _ 
-- |  _ \ / _` / __| |/ __|____ / __/ _ \| '_ \| |_| |/ _` |
-- | |_) | (_| \__ \ | (_|_____| (_| (_) | | | |  _| | (_| |
-- |____/ \__,_|___/_|\___|     \___\___/|_| |_|_| |_|\__, |
--                                                    |___/ 
-- =========================================================

-- Delete autocmd
vim.cmd[[autocmd!]]

-- utf-8 encoding
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Line number enable
vim.wo.number = true
vim.wo.relativenumber = true

-- window title
vim.opt.title = true

-- left side sign
vim.wo.signcolumn = "yes"

-- highlight cursorline
vim.wo.cursorline = true

-- new line autoindent
vim.opt.autoindent = true
vim.opt.smartindent = true

-- highlight search
vim.opt.hlsearch = true

-- show cmd in the status line
vim.opt.showcmd = true

-- cmd height
vim.opt.cmdheight = 1

-- always show statusline
vim.opt.laststatus = 2

-- disable backup
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- use space when press tab
vim.opt.expandtab = true

-- keep 10 line
vim.opt.scrolloff = 10

-- shell specify
vim.opt.shell = 'zsh'

-- preview change
vim.opt.inccommand = 'split'

-- Case insensitive searching UNLESS /C or capital in search
vim.opt.ignorecase = true

-- when insert tab, use 'shirtwidth'
vim.opt.smarttab = true

-- autoindent when you <BS> 
vim.opt.breakindent = true

-- tab width
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- no Wrap lines
vim.opt.wrap = false

-- mouse enable
vim.opt.mouse = 'a'

-- split window at down and right
vim.o.splitbelow = true
vim.o.splitright = true

-- space show in '·'
vim.o.list = true
vim.o.listchars = "space:·"

-- always show tabline
vim.opt.showtabline = 2

-- disable showmode
vim.opt.showmode = false

-- press <BS> at start
vim.opt.backspace = { 'start', 'eol', 'indent' }

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})
