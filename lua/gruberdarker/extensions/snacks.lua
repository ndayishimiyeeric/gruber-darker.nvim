local M = {}

---@param options gruberdarker.Config
---@param palette gruberdarker.Palette
function M.get(options, palette)
    options = options or {}
    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {
        SnacksPickerListCursorLine = { bg = palette.bg3 },
        SnacksPickerDir = { fg = palette.gray },
        SnacksPickerMatch = { fg = palette.yellow },
    }
    return highlights
end
return M
