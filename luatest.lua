
-- local pt = require("user.ui.feline.util")
-- local test_again = require("alpha")
-- if pt_ok then
--   print(vim.inspect(pt))
-- end

-- if test_again_ok then
--   print(vim.inspect(test_again))
-- end

-- print(vim.inspect(test_again))
--[[ local test_status_ok, tok = pcall(require, "tokyonight") ]]
--[[ if test_status_ok then ]]
--[[   print("plugin loaded") ]]
--[[ end ]]


--[[ print(vim.inspect(tok)) ]]
--[[ print(vim.inspect(vim.g.tokyonight_colors)) ]]



local d = {"cache", "config", "config_dirs", "data", "data_dirs"}

for _, y in pairs(d) do
  print(vim.fn.stdpath(y))
end


--[[ print(vim.fn.runtimepath()) ]]


