local M = {}

---@class gruberdarker.Extensions
---@field treesitter? boolean
---@field gitsigns? boolean
---@field telescope? boolean
---@field whichkey? boolean
---@field indentblankline? boolean
---@field hop? boolean
---@field leap? boolean
---@field dashboard? boolean
---@field snacks? boolean

---@class gruberdarker.Config
---@field transparent? boolean
---@field italic_comments? boolean
---@field terminal_colors? boolean
---@field bold? boolean
---@field extensions? gruberdarker.Extensions
local default_options = {
    transparent = false,
    italic_comments = false,
    terminal_colors = true,
    bold = false,
    extensions = {
        treesitter = true,
        gitsigns = true,
        telescope = true,
        whichkey = true,
        indentblankline = true,
        hop = true,
        leap = true,
        dashboard = true,
        snacks = true,
    },
}

---@type gruberdarker.Config
M.options = {}

---@param options gruberdarker.Config|nil
function M.setup(options)
    options = options or {}
    M.options = vim.tbl_extend("force", {}, default_options, options)
    vim.g.gruberdarker_options = M.options
end

M.setup()

return M
