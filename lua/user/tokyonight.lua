-- xample config in Lua
vim.g.tokyonight_style = "night" -- night, day, storm
vim.g.tokyonight_italic_functions = false
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_terminal_colors = true

vim.g.tokyonight_lualine_bold = true
vim.g.tokyonight_italic_variables = true
vim.g.tokyonight_transparent = true
vim.g.tokyonight_hide_inactive_statusline = false
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_dark_float = true
vim.g.tokyonight_day_brightness = {}  -- adjust the birhtness of the day style (default = 0.3)
vim.g.tokyonight_lualine_bold = true -- When true, section headers in the lualine theme will be bold

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000", dark5 = "orange"}
vim.cmd "colorscheme tokyonight"

