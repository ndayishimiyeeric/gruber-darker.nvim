local M = {}

---@param options gruberdarker.Config
---@param palette gruberdarker.Palette
function M.get(options, palette)
    options = options or {}
    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {
        HopNextKey = { fg = palette.yellow, bold = true },
        HopNextKey1 = { fg = palette.green, bold = true },
        HopNextKey2 = { fg = palette.niagara },
        HopUnmatched = { fg = palette.grey },
    }
    return highlights
end
return M
