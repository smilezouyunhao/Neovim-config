local status, server_install = pcall(require, "nvim-lsp-installer")

if not server_install then
  print("nvim-lsp-installer is not installed")
  return
end

server_install.setup({
  -- A list of servers to automatically install if they're not already installed. Example: { "rust_analyzer", "sumneko_lua" }
  ensure_installed = { "sumneko_lua", "pyright" },

  -- automatically detect which servers to install (based on which servers are set up via lspconfig)
  automatic_installation = false,

  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  }
})
