local M = {}

---@param options gruberdarker.Config
---@param palette gruberdarker.Palette
function M.get(options, palette)
    options = options or {}
    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {
        LeapMatch = { fg = palette.yellow, bold = true },
        LeapLabelPrimary = { fg = palette.black, bg = palette.yellow, bold = true },
        LeapLabelSecondary = { fg = palette.black, bg = palette.green, bold = true },
        LeapBackdrop = { fg = palette.gray },
    }
    return highlights
end
return M
