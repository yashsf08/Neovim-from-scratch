-- TODO: Needs to leoad all necessary plugins for Mason and nvim-lsp

-- This is for Mason GUI
require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})


require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "clangd"},
  automatic_installation = true, -- Automatically install servers configured in lspconfig
})

require "user.mason_lsp.lsp_handler"
require "user.mason_lsp.lsp_keymaps"
require "user.mason_lsp.null-ls"
