local status_ok, comment = pcall(require, "Comment")
if not status_ok then
	return
end

comment.setup({
	pre_hook = function(ctx)
		local U = require("Comment.utils")

		-- Determine the location for ts_context_commentstring (block or visual)
		local location = nil
		if ctx.ctype == U.ctype.block then
			location = require("ts_context_commentstring.utils").get_cursor_location()
		elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
			location = require("ts_context_commentstring.utils").get_visual_start_location()
		end

		-- Custom handling for Lua filetypes
		if vim.bo.filetype == "lua" then
			return ctx.ctype == U.ctype.line and "-- %s" -- or "--[[ %s ]]"
		end

		-- Default behavior for other filetypes
		return require("ts_context_commentstring.internal").calculate_commentstring({
			key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
			location = location,
		})
	end,
})
