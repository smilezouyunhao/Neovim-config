local status, cmp = pcall(require, "cmp")

if not status then
  print("cmp is not installed")
  return
end

local lspkind = require("lspkind")

cmp.setup{
  -- snippet enigne
  snippet = {
      expand = function(args)
        -- For `vsnip` users
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },

  -- mapping
  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    --['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),

  sources = cmp.config.sources({
    { name = 'vsnip' },
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  }),

  formatting = {
    format = lspkind.cmp_format({
      with_text = true,
      maxwidth = 50,
      before = function(entry, vim_item)
        vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
        return vim_item
      end
    }),
  }
}
