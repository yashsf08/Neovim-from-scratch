-- Import lspconfig plugin
local lspconfig = require("lspconfig")

-- Import mason-lspconfig plugin
local mason_lspconfig = require("mason-lspconfig")

-- Import cmp-nvim-lsp plugin for autocompletion capabilities
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- Capabilities for autocompletion
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Default setup handler for all installed LSP servers
mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      capabilities = capabilities,
    })
  end,
  -- Custom configuration for lua_ls
  ["lua_ls"] = function()
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          completion = {
            callSnippet = "Replace",
          },
        },
      },
    })
  end,
  ["py_lsp"] = function ()
    lspconfig["py_lsp"].setup({
        language_server = "pylsp",
        source_strategies = {"conda", "poetry", "default", "system"},
        capabilities = capabilities,
        -- on_attach = on_attach,
        pylsp_plugins = {
            autopep8 = {
                enabled = true
            },
            pyls_mypy = {
                enabled = true
            },
            pyls_isort = {
                enabled = true
            },
            flake8 = {
                enabled = true,
                executable = ".venv/bin/flake8",
            },
        },
    })
  end,
  -- Custom configuration for other servers (e.g., pyright, clangd)
  ["pyright"] = function()
    lspconfig["pyright"].setup({
      capabilities = capabilities,
    })
  end,
  ["clangd"] = function()
    lspconfig["clangd"].setup({
      capabilities = capabilities,
    })
  end,
})
