local M = {}

---@param options gruberdarker.Config
---@param palette gruberdarker.Palette
function M.get(options, palette)
    options = options or {}
    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {
        TelescopeBorder = { fg = palette.gray },
        TelescopePromptNormal = { fg = palette.fg, bg = palette.bg2 },
        TelescopePromptBorder = { fg = palette.gray },
        TelescopePromptTitle = { fg = palette.yellow, bold = true },
        TelescopePreviewTitle = { fg = palette.green, bold = false },
        TelescopeResultsTitle = { fg = palette.niagara, bold = true },
        TelescopeSelection = { bg = palette.bg2 },
        TelescopeSelectionCaret = { fg = palette.yellow },
        TelescopeMatching = { fg = palette.yellow, bold = true },
        TelescopeNormal = { fg = palette.fg, bg = palette.bg },
    }
    return highlights
end
return M
