--[[ local status_ok, _ = pcall(require, "lspconfig") ]]
--[[ if not status_ok then ]]
--[[   print("LSP not installed") ]]
--[[   return ]]
--[[ end ]]

--[[ require("user.lsp.lspconfig"). ]]
require "user.lsp.lsp-installer"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
