local M = {}

---@param options gruberdarker.Config
---@param palette gruberdarker.Palette
function M.get(options, palette)
    options = options or {}
    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {
        BlinkCmpMenu = { link = "Pmenu" },
        BlinkCmpMenuBorder = { bg = palette.red },
        BlinkCmpDoc = { bg = palette.black },
        BlinkCmpSignatureHelp = { bg = palette.black },

        BlinkCmpKindText = { fg = palette.green },
        BlinkCmpKindField = { fg = palette.green },
        BlinkCmpKindKeyword = { fg = palette.green },
        BlinkCmpKindTypeParameter = { fg = palette.green },
        BlinkCmpKindOperator = { fg = palette.green }, -- ??

        BlinkCmpKindMethod = { fg = palette.niagara },
        BlinkCmpKindFunction = { fg = palette.niagara },
        BlinkCmpKindConstructor = { fg = palette.niagara },

        BlinkCmpKindClass = { fg = palette.quartz },
        BlinkCmpKindInterface = { fg = palette.quartz },
        BlinkCmpKindStruct = { fg = palette.quartz },
        BlinkCmpKindModule = { fg = palette.quartz },

        BlinkCmpKindVariable = { fg = palette.yellow },
        BlinkCmpKindProperty = { fg = palette.yellow },
        BlinkCmpKindConstant = { fg = palette.yellow },

        BlinkCmpKindUnit = { fg = palette.brown },
        BlinkCmpKindValue = { fg = palette.brown },
        BlinkCmpKindEnum = { fg = palette.brown },
        BlinkCmpKindEnumMember = { fg = palette.brown },

        BlinkCmpKindSnippet = { fg = palette.wisteria },
        BlinkCmpKindColor = { fg = palette.wisteria },
        BlinkCmpKindFile = { fg = palette.wisteria },
        BlinkCmpKindReference = { fg = palette.wisteria },
        BlinkCmpKindFolder = { fg = palette.wisteria },
        BlinkCmpKindEvent = { fg = palette.wisteria },
    }
    return highlights
end
return M
