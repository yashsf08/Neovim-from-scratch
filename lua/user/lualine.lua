local colors = {
	bg = "#202328",
	fg = "#bbc2cf",
	yellow = "#ECBE7B",
	cyan = "#008080",
	darkblue = "#081633",
	green = "#98be65",
	orange = "#FF8800",
	violet = "#a9a1e1",
	magenta = "#c678dd",
	blue = "#51afef",
	red = "#ec5f67",
}

local conditions = {
	buffer_not_empty = function()
		return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
	end,
	hide_in_width = function()
		return vim.fn.winwidth(0) > 80
	end,
	check_git_workspace = function()
		local filepath = vim.fn.expand("%:p:h")
		local gitdir = vim.fn.finddir(".git", filepath .. ";")
		return gitdir and #gitdir > 0 and #gitdir < #filepath
	end,
}

--[[ local diff = { ]]
-- Is it me or the symbol for modified us really weird
--[[ symbols = { added = ' ', modified = " ", removed = ' ' }, ]]
--[[ diff_color = { ]]
--[[   added = { fg = colors.green }, ]]
--[[   modified = { fg = colors.orange }, ]]
--[[   removed = { fg = colors.red } ]]
--[[ } ]]
--[[ cond = conditions.hide_in_width, ]]
--[[ } ]]

local diff = {
	"diff",
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
	cond = conditions.hide_in_width,
	diff_color = {
		added = { fg = colors.green },
		modified = { fg = colors.orange },
		removed = { fg = colors.red },
	},
}
--[[
local diagnostics = {
  "diagnostics",
  sources = { 'nvim_diagnostic' },
  sections = { "error", "warn", "info" },

  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan }
  },
}
]]
local filler = {
	function()
		return "%="
	end,
}

local lsp_info = {
	-- Lsp server name .
	function()
		local msg = "No Lsp"
		local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
		local clients = vim.lsp.get_active_clients()
		if next(clients) == nil then
			return msg
		end
		for _, client in ipairs(clients) do
			local filetypes = client.config.filetypes
			if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
				return client.name
			end
		end
		return msg
	end,
	icon = " ",
	color = { fg = "#ffffff", gui = "bold" },
}

require("lualine").setup({
	options = {
		theme = "auto",
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "/" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = { diff, "filename", filler, "diagnostics" },
		lualine_x = { lsp_info, "encoding" },
	},
})
