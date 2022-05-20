require("nightfox").setup({
  palettes = {
    -- Custom duskfox with black background
    duskfox = {
      bg1 = "#000000", -- Black background
      bg0 = "#1d1d2b", -- Alt backgrounds (floats, statusline, ...)
      bg3 = "#121820", -- 55% darkened from stock
      sel0 = "#131b24", -- 55% darkened from stock
    },
  },
  specs = {
    all = {
      inactive = "bg0", -- Default value for other styles
    },
    duskfox = {
      inactive = "#090909", -- Slightly lighter then black background
    },
  },
  groups = {
    all = {
      NormalNC = { fg = "fg1", bg = "inactive" }, -- Non-current windows
    },
  },
})


-- Returns a table with each colorscheme and the palette associated with it
local palettes = require('nightfox.palette').load()

-- Returns the palette of the specified colorscheme
local palette = require('nightfox.palette').load("nightfox")

print(vim.inspect(palettes.duskfox))
-- print(vim.inspect(palette))
-- {
--   base = "#c94f6d",
--   bright = "#d16983",
--   dim = "#ab435d",
-- }
