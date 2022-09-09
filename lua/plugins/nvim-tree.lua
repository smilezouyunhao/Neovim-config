local status, tree = pcall(require, "nvim-tree")

if not status then
  print("nvim-tree is not installed")
  return
end

-- Nvim-tree setup
tree.setup{
  -- Show the git status icon
  git = {
    enable = false,
  },

  actions = {
    open_file = {
      -- Resizes the tree when opening a file
      resize_window = true,
      -- Closes the explorer when opening a file
      quit_on_open = true,
    },
  },

  renderer = {
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    },
  },
}

-- Nvim-tree Mappings
vim.keymap.set("n", "<A-m>", ":NvimTreeToggle<CR>", {})
