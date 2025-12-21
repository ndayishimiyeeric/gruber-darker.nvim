local M = {}

---@param options gruberdarker.Config
---@param palette gruberdarker.Palette
function M.get(options, palette)
    options = options or {}
    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {
        Normal = { fg = palette.fg, bg = palette.bg },
        NormalNC = { fg = palette.fg, bg = palette.bg },
        ColorColumn = { bg = palette.bg_alt },
        LineNr = { fg = palette.grey },
        VertSplit = { fg = palette.grey },
        WinSeparator = { fg = palette.grey },
        Folded = { fg = palette.brown, bg = palette.bg_alt },
        FoldColumn = { fg = palette.brown, bg = palette.bg },
        SignColumn = { fg = palette.grey, bg = palette.bg },
        SignColumnSB = { fg = palette.grey, bg = palette.bg },

        Cursor = { bg = palette.yellow },
        CursorColumn = { bg = nil },
        CursorLine = { bg = nil },
        CursorLineNr = { fg = palette.yellow, bg = nil },
        ICursor = { bg = palette.yellow },
        CursorIM = { bg = palette.yellow },

        DiffAdd = { fg = palette.green, bg = nil },
        DiffChange = { fg = palette.yellow, bg = nil },
        DiffDelete = { fg = palette.red, bg = nil },
        DiffText = { fg = palette.yellow, bg = palette.grey },
        Added = { fg = palette.green },
        Removed = { fg = palette.red },

        Search = { fg = palette.black, bg = palette.niagara },
        IncSearch = { fg = palette.black, bg = palette.niagara },
        CurSearch = { fg = palette.black, bg = palette.niagara },
        Substitute = { fg = palette.fg, bg = palette.red },

        ErrorMsg = { fg = palette.red },
        WarningMsg = { fg = palette.yellow },
        ModeMsg = { fg = palette.green },
        MoreMsg = { fg = palette.green },
        Question = { fg = palette.niagara },
        -- MsgArea

        SpellBad = { sp = palette.red, undercurl = true },
        SpellCap = { sp = palette.yellow, undercurl = true },
        SpellLocal = { sp = palette.yellow, undercurl = true },
        SpellRare = { sp = palette.yellow, undercurl = true },

        StatusLine = { fg = palette.fg, bg = palette.bg_alt },
        StatusLineNC = { fg = palette.quartz, bg = palette.bg_alt },

        TabLine = { fg = palette.grey, bg = palette.bg_alt },
        TabLineFill = { bg = palette.bg_alt },
        TabLineSel = { fg = palette.yellow, bg = palette.bg, bold = options.bold },

        Pmenu = { fg = palette.fg, bg = palette.bg_alt },
        PmenuSel = { fg = palette.black, bg = palette.fg },
        PmenuSbar = { bg = palette.grey },
        PmenuThumb = { bg = palette.black },
        NormalFloat = { fg = palette.fg, bg = palette.bg_alt },
        FloatBorder = { fg = palette.grey },
        -- FloatTitle

        Visual = { bg = palette.grey_alt },
        VisualNOS = { bg = palette.grey_alt },

        Directory = { fg = palette.niagara, bold = options.bold },
        NonText = { fg = palette.grey },
        SpecialKey = { fg = palette.grey },
        Title = { fg = palette.niagara, bold = options.bold },
        Conceal = { fg = palette.grey },
        Ignore = { fg = palette.grey },
        MatchParen = { bg = palette.grey },
        Underlined = { fg = palette.wisteria, underline = true },
        QuickFixLine = { bg = palette.bg_alt },
        Bold = { bold = options.bold },
        Italic = { italic = true },

        Comment = { fg = palette.brown },
        Constant = { fg = palette.quartz },
        String = { fg = palette.green },
        Character = { fg = palette.green },
        Number = { fg = palette.fg },
        Boolean = { fg = palette.yellow },
        Float = { fg = palette.wisteria },

        Identifier = { fg = palette.fg },
        Function = { fg = palette.niagara },
        Statement = { fg = palette.yellow },
        Conditional = { fg = palette.yellow, bold = options.bold },
        Repeat = { fg = palette.yellow, bold = options.bold },
        Label = { fg = palette.yellow, bold = options.bold },
        Operator = { fg = palette.fg, italic = true },
        Keyword = { fg = palette.yellow, bold = options.bold },
        Exception = { fg = palette.yellow, bold = options.bold },
        PreProc = { fg = palette.quartz },
        Include = { fg = palette.quartz },
        Define = { fg = palette.quartz },
        Macro = { fg = palette.quartz },
        PreCondit = { fg = palette.quartz },
        Type = { fg = palette.quartz },
        StorageClass = { fg = palette.quartz, bold = options.bold },
        Structure = { fg = palette.yellow, bold = options.bold },
        Typedef = { fg = palette.yellow, bold = options.bold },
        Special = { fg = palette.yellow },
        SpecialChar = { fg = palette.yellow },
        Tag = { fg = palette.yellow },
        Delimiter = { fg = palette.fg },
        SpecialComment = { fg = palette.wisteria, bold = options.bold },

        Debug = { fg = palette.red },
        Error = { fg = palette.red },
        Todo = { fg = palette.yellow, bold = options.bold },

        LspReferenceText = { bg = palette.bg_alt },
        LspReferenceRead = { bg = palette.bg_alt },
        LspReferenceWrite = { bg = palette.bg_alt },
        LspSignatureActiveParameter = { bg = palette.grey },
        LspCodeLens = { fg = palette.brown },
        LspCodeLensSeparator = { fg = palette.grey },
        LspInfoBorder = { fg = palette.grey },

        DiagnosticError = { fg = palette.red },
        DiagnosticWarn = { fg = palette.yellow },
        DiagnosticInfo = { fg = palette.niagara },
        DiagnosticHint = { fg = palette.green },
        DiagnosticVirtualTextError = { fg = palette.red },
        DiagnosticVirtualTextWarn = { fg = palette.yellow },
        DiagnosticVirtualTextInfo = { fg = palette.niagara },
        DiagnosticVirtualTextHint = { fg = palette.green },
        DiagnosticUnderlineError = { sp = palette.red, undercurl = true },
        DiagnosticUnderlineWarn = { sp = palette.yellow, undercurl = true },
        DiagnosticUnderlineInfo = { sp = palette.niagara, undercurl = true },
        DiagnosticUnderlineHint = { sp = palette.green, undercurl = true },

        YankyPut = { link = "Visual" },
        YankyYanked = { link = "Visual" },
    }

    return highlights
end

return M
