local M = {}

---@param options gruberdarker.Config
---@param palette gruberdarker.Palette
function M.get(options, palette)
    options = options or {}
    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {
        IndentBlanklineChar = { fg = palette.grey },
        IndentBlanklineContextChar = { fg = palette.grey },
        IndentBlanklineContextStart = { sp = palette.grey, underline = true },
    }
    return highlights
end
return M
