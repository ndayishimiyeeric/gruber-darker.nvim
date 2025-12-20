local theme = require("gruberdarker.theme")
local util = require("gruberdarker.util")
local config = require("gruberdarker.config")
local M = {}

function M.load()
    util.load(theme.setup())
end

M.setup = config.setup
M.colorscheme = M.load

return M
