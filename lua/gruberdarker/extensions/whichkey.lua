local M = {}

---@param options gruberdarker.Config
---@param palette gruberdarker.Palette
function M.get(options, palette)
    options = options or {}
    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {
        WhichKey = { fg = palette.yellow },
        WhichKeyGroup = { fg = palette.niagara },
        WhichKeyDesc = { fg = palette.fg },
        WhichKeySeparator = { fg = palette.brown },
        WhichKeyFloat = { bg = palette.bg2 },
        WhichKeyValue = { fg = palette.green },
    }
    return highlights
end
return M
