local status_ok, ts_configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  print("Treesitter not found!")
  return
end

local status_ok, ts_context = pcall(require, "ts_context_commentstring")
if not status_ok then
  print("ts_context_commentstring not found!")
  return
end

vim.g.skip_ts_context_commentstring_module = true

-- TODO:
--[[ ts_context_commentstring.setup { ]]
--[[   enable_autocmd = false,  ]]
--[[ } ]]

ts_configs.setup {
  ensure_installed = { "lua", "bash", "python" }, -- put the language you want in this array
  ignore_install = { "" },
  sync_install = false,
  highlight = {
    enable = true,
    disable = { "markdown" },
    additional_vim_regex_highlighting = false,
  },

  indent = { enable = true },

  matchup = {
    enable = { "astro" },
    disable = { "lua" },
  },

  autotag = { enable = true },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },

  autopairs = { enable = true },

  textobjects = {
    select = {
      enable = true,
      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["at"] = "@class.outer",
        ["it"] = "@class.inner",
        ["ac"] = "@call.outer",
        ["ic"] = "@call.inner",
        ["aa"] = "@parameter.outer",
        ["ia"] = "@parameter.inner",
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner",
        ["ai"] = "@conditional.outer",
        ["ii"] = "@conditional.inner",
        ["a/"] = "@comment.outer",
        ["i/"] = "@comment.inner",
        ["ab"] = "@block.outer",
        ["ib"] = "@block.inner",
        ["as"] = "@statement.outer",
        ["is"] = "@scopename.inner",
        ["aA"] = "@attribute.outer",
        ["iA"] = "@attribute.inner",
        ["aF"] = "@frame.outer",
        ["iF"] = "@frame.inner",
      },
    },
  },
}


-- local configs = require "nvim-treesitter.configs"
--
-- configs.setup {
--   -- modules = {
--   --
--   --
--   --   rainbow = {
--   --     enable = false,
--   --     query = {
--   --       "rainbow-parens",
--   --     },
--   --     strategy = require("ts-rainbow").strategy.global,
--   --     hlgroups = {
--   --       -- "TSRainbowRed",
--   --       "TSRainbowBlue",
--   --       -- "TSRainbowOrange",
--   --       -- "TSRainbowCoral",
--   --       "TSRainbowPink",
--   --       "TSRainbowYellow",
--   --       -- "TSRainbowViolet",
--   --       -- "TSRainbowGreen",
--   --     },
--   --   },
--   -- },
-- }
