-- Default options
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    styles = {              -- Style to be applied to different syntax groups
      comments = "italic",    -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "bold",
      keywords = "bold",
      numbers = "NONE",
      operators = "NONE",
      strings = "italic",
      types = "italic,bold",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = true,
      visual = true,
      search = true,
    },
    -- modules = {             -- List of various plugins and additional options
    --   -- ...
    -- },
  }
})



-- require("nightfox").setup({
--   palettes = {
--     -- Custom duskfox with black background
--     duskfox = {
--       bg1 = "#000000", -- Black background
--       bg0 = "#1d1d2b", -- Alt backgrounds (floats, statusline, ...)
--       bg3 = "#121820", -- 55% darkened from stock
--       sel0 = "#131b24", -- 55% darkened from stock
--     },
--   },
--   specs = {
--     all = {
--       inactive = "bg0", -- Default value for other styles
--     },
--     duskfox = {
--       inactive = "#090909", -- Slightly lighter then black background
--     },
--   },
--   groups = {
--     all = {
--       NormalNC = { fg = "fg1", bg = "inactive" }, -- Non-current windows
--     },
--   },

-- setup must be called before loading
vim.cmd("colorscheme nightfox")
