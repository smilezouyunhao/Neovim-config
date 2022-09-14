-- ====================================================
--  _     ____  ____                        __ _       
-- | |   / ___||  _ \       ___ ___  _ __  / _(_) __ _ 
-- | |   \___ \| |_) |____ / __/ _ \| '_ \| |_| |/ _` |
-- | |___ ___) |  __/_____| (_| (_) | | | |  _| | (_| |
-- |_____|____/|_|         \___\___/|_| |_|_| |_|\__, |
--                                               |___/ 
-- ====================================================
local status, lsp_config = pcall(require, "lspconfig")

if not status then
  print("lspconfig is not installed")
  return
end

-- Mappings
local opts = { noremap = true, silent = true }
local maps = vim.keymap

-- Diagnostic
--maps.set('n', '[d', vim.diagnostic.goto_prev, opts)
maps.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
--maps.set('n', ']d', vim.diagnostic.goto_next, opts)
maps.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
maps.set('n', ';;', vim.diagnostic.setloclist, opts)

-- on_attach function
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  --maps.set('n', 'gh', vim.lsp.buf.hover, bufopts)
  maps.set("n", "gh", "<cmd>Lspsaga hover_doc<cr>", bufopts)
  maps.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  maps.set('n', 'gr', vim.lsp.buf.references, bufopts)
  --maps.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  maps.set("n", "<space>rn", "<cmd>Lspsaga rename<CR>", bufopts)
  maps.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

-- pyright
lsp_config.pyright.setup {
  on_attach = on_attach,
}

-- sumneko_lua
lsp_config.sumneko_lua.setup {
  on_attach = on_attach,

  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },

      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },

      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },

      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- clangd
lsp_config.clangd.setup {
  on_attach = on_attach,
}
