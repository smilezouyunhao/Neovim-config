local status, blankline = pcall(require, "indent_blankline")

if not status then
  print("indent-blankline is not installed")
  return
end

vim.opt.list = true
vim.opt.listchars:append "space:⋅"

-- setup
blankline.setup{
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = false,
}
