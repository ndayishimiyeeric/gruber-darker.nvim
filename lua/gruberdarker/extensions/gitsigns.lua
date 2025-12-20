local M = {}

---@param options gruberdarker.Config
---@param palette gruberdarker.Palette
function M.get(options, palette)
    options = options or {}
    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {
        GitSignsAdd = { fg = palette.green },
        GitSignsChange = { fg = palette.yellow },
        GitSignsDelete = { fg = palette.red },

        GitSignsAddNr = { fg = palette.green },
        GitSignsChangeNr = { fg = palette.yellow },
        GitSignsDeleteNr = { fg = palette.red },

        GitSignsAddLn = { link = "DiffAdd" },
        GitSignsChangeLn = { link = "DiffChange" },
        GitSignsDeleteLn = { link = "DiffDelete" },

        GitSignsCurrentLineBlame = { link = "LineNr" },
    }
    return highlights
end
return M
