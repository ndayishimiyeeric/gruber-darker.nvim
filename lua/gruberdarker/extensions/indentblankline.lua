local M = {}

---@param options gruberdarker.Config
---@param palette gruberdarker.Palette
function M.get(options, palette)
    options = options or {}
    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {
        IndentBlanklineChar = { fg = palette.gray },
        IndentBlanklineContextChar = { fg = palette.gray },
        IndentBlanklineContextStart = { sp = palette.gray, underline = true },
    }
    return highlights
end
return M
