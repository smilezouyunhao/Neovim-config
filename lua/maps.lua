-- ============================================
--  __  __                   _                 
-- |  \/  | __ _ _ __  _ __ (_)_ __   __ _ ___ 
-- | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
-- | |  | | (_| | |_) | |_) | | | | | (_| \__ \
-- |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
--              |_|   |_|            |___/     
-- ============================================

local keymap = vim.keymap

-- Delete a charactor
keymap.set('n', 'x', '"_x')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Move to front or end
keymap.set('i', 'jh', '<ESC>I')
keymap.set('i', 'jl', '<ESC>A')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Split window
keymap.set('n', 'ss', ':split<Return>')
keymap.set('n', 'sv', ':vsplit<Return>')

-- Delete current window
keymap.set('n', 'sc', '<C-w>c')

-- Delete other windows
keymap.set('n', 'so', '<C-w>o')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sl', '<C-w>l')

-- Indent code
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Move code
keymap.set("v", "J", ":move '>+1<CR>gv-gv")
keymap.set("v", "K", ":move '<-2<CR>gv-gv")

-- Code rolling
keymap.set("n", "<C-u>", "9k")
keymap.set("n", "<C-d>", "9j")
