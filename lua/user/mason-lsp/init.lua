-- TODO: Needs to leoad all necessary plugins for Mason and nvim-lsp
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "clangd", "pyright" },
}




