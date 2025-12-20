local M = {}

---@param options gruberdarker.Config
---@param palette gruberdarker.Palette
function M.get(options, palette)
    options = options or {}
    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {
        ["@annotation"] = { link = "PreProc" },
        ["@attribute"] = { link = "PreProc" },
        ["@boolean"] = { link = "Boolean" },
        ["@character"] = { link = "Character" },
        ["@character.special"] = { link = "SpecialChar" },
        ["@comment"] = { link = "Comment" },
        ["@conditional"] = { link = "Conditional" },
        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "SpecialChar" }, -- or Constant?
        ["@constant.macro"] = { link = "Define" },
        ["@constructor"] = { link = "Function" },
        ["@debug"] = { link = "Debug" },
        ["@define"] = { link = "Define" },
        ["@exception"] = { link = "Exception" },
        ["@field"] = { link = "Identifier" },
        ["@float"] = { link = "Float" },
        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { fg = palette.yellow },
        ["@function.call"] = { link = "@function" },
        ["@function.macro"] = { link = "Macro" },
        ["@include"] = { link = "Include" },
        ["@keyword"] = { link = "Keyword" },
        ["@keyword.function"] = { link = "Keyword" },
        ["@keyword.operator"] = { link = "Keyword" },
        ["@keyword.coroutine"] = { link = "Keyword" },
        ["@keyword.return"] = { link = "Keyword" },
        ["@keyword.type"] = { link = "Keyword" },
        ["@label"] = { link = "Label" },
        ["@method"] = { link = "Function" },
        ["@method.call"] = { link = "Function" },
        ["@module"] = { link = "Include" },
        ["@namespace"] = { link = "Include" }, -- niagara?
        ["@none"] = { link = "Identifier" },
        ["@number"] = { link = "Number" },
        ["@operator"] = { link = "Operator" },
        ["@parameter"] = { link = "Identifier" },
        ["@parameter.reference"] = { link = "Identifier" },
        ["@preproc"] = { link = "PreProc" },
        ["@property"] = { link = "Identifier" },
        ["@punctuation.delimiter"] = { link = "Delimiter" },
        ["@punctuation.bracket"] = { link = "Delimiter" },
        ["@punctuation.special"] = { fg = palette.brown },
        ["@repeat"] = { link = "Repeat" },
        ["@storageclass"] = { link = "StorageClass" },
        ["@string"] = { link = "String" },
        ["@string.escape"] = { link = "Constant" },
        ["@string.regex"] = { link = "Constant" },
        ["@string.special"] = { link = "Constant" },
        ["@symbol"] = { link = "Identifier" }, -- quartz?
        ["@tag"] = { link = "Tag" },
        ["@tag.attribute"] = { fg = palette.quartz },
        ["@tag.delimiter"] = { link = "Delimiter" },
        ["@text"] = { fg = palette.fg },
        ["@text.danger"] = { link = "Error" },
        ["@text.emphasis"] = { italic = true },
        ["@text.literal"] = { link = "String" },
        ["@text.environment"] = { link = "Macro" },
        ["@text.math"] = { link = "Special" },
        ["@text.note"] = { link = "SpecialComment" },
        ["@text.reference"] = { bg = palette.niagara },
        ["@text.strike"] = { strikethrough = true },
        ["@text.strong"] = { bold = true },
        ["@text.title"] = { fg = palette.niagara, bold = true },
        ["@text.todo"] = { link = "Todo" },
        ["@text.underline"] = { underline = true },
        ["@text.uri"] = { fg = palette.niagara, underline = true },
        ["@text.warning"] = { link = "Todo" },
        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { link = "Type" },
        ["@type.definition"] = { link = "Typedef" },
        ["@type.qualifier"] = { link = "Type" },
        ["@variable"] = { fg = palette.fg },
        ["@variable.builtin"] = { link = "Special" },
        ["@error"] = { link = "Error" },
        TreesitterContextBottom = { underline = true, sp = palette.wisteria },
    }

    return highlights
end

return M
