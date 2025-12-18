local M = {}

-- Color palette
local colors = {
	bg = "#17181A",
	bg_alt = "#1e2124",
	fg = "#ffffff",
	red = "#c73c3f", -- or #f43841
	black = "#101010",
	green = "#42dc00",
	yellow = "#ffdb00",
	brown = "#cc8c3c",
	quartz = "#95a99f",
	grey = "#303540",
	grey_alt = "#565f73",
	niagara = "#92a7cb",
	wisteria = "#afafda",
}

function M.setup(config)
	config = config or {}
	vim.cmd.highlight("clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd.syntax("reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "gruber-darker"
	vim.g.terminal_color_0 = colors.bg
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_2 = colors.green
	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_4 = colors.niagara
	vim.g.terminal_color_5 = colors.wisteria
	vim.g.terminal_color_6 = colors.quartz
	vim.g.terminal_color_7 = colors.fg
	vim.g.terminal_color_8 = colors.grey
	vim.g.terminal_color_9 = colors.red
	vim.g.terminal_color_10 = colors.green
	vim.g.terminal_color_11 = colors.yellow
	vim.g.terminal_color_12 = colors.niagara
	vim.g.terminal_color_13 = colors.wisteria
	vim.g.terminal_color_14 = colors.quartz
	vim.g.terminal_color_15 = colors.fg

	---@type table<string, vim.api.keyset.highlight>
	local groups = {
		-- Editor
		Normal = { fg = colors.fg, bg = colors.bg },
		ColorColumn = { bg = colors.bg_alt },
		Cursor = { bg = colors.yellow },
		CursorColumn = { bg = colors.bg_alt },
		CursorLine = { bg = colors.bg_alt },
		CursorLineNr = { fg = colors.yellow, bg = colors.bg_alt },
		LineNr = { fg = colors.grey },
		VertSplit = { fg = colors.grey },
		WinSeparator = { fg = colors.grey },
		Folded = { fg = colors.brown, bg = colors.bg_alt },
		FoldColumn = { fg = colors.brown, bg = colors.bg },
		SignColumn = { fg = colors.grey, bg = colors.bg },

		-- Statusline
		StatusLine = { fg = colors.fg, bg = colors.bg_alt },
		StatusLineNC = { fg = colors.quartz, bg = colors.bg_alt },

		-- Tabline
		TabLine = { fg = colors.grey, bg = colors.bg_alt },
		TabLineFill = { bg = colors.bg_alt },
		TabLineSel = { fg = colors.yellow, bg = colors.bg, bold = true },

		-- Popups
		Pmenu = { fg = colors.fg, bg = colors.grey },
		PmenuSel = { fg = colors.black, bg = colors.fg },
		PmenuSbar = { bg = colors.grey },
		PmenuThumb = { bg = colors.black },
		NormalFloat = { fg = colors.fg, bg = colors.bg_alt },
		FloatBorder = { fg = colors.grey },

		-- Search
		Search = { fg = colors.black, bg = colors.niagara },
		IncSearch = { fg = colors.black, bg = colors.niagara },
		CurSearch = { fg = colors.black, bg = colors.niagara },
		Substitute = { fg = colors.fg, bg = colors.red },

		-- Visual
		Visual = { bg = colors.grey_alt },
		VisualNOS = { bg = colors.grey_alt },

		-- Messages
		ErrorMsg = { fg = colors.red },
		WarningMsg = { fg = colors.yellow },
		ModeMsg = { fg = colors.green },
		MoreMsg = { fg = colors.green },
		Question = { fg = colors.niagara },

		-- Diff
		DiffAdd = { fg = colors.green, bg = nil },
		DiffChange = { fg = colors.yellow, bg = nil },
		DiffDelete = { fg = colors.red, bg = nil },
		DiffText = { fg = colors.yellow, bg = colors.grey },

		-- Spelling
		SpellBad = { sp = colors.red, undercurl = true },
		SpellCap = { sp = colors.yellow, undercurl = true },
		SpellLocal = { sp = colors.yellow, undercurl = true },
		SpellRare = { sp = colors.yellow, undercurl = true },

		-- Misc
		Directory = { fg = colors.niagara, bold = true },
		NonText = { fg = colors.grey },
		SpecialKey = { fg = colors.grey },
		Title = { fg = colors.niagara, bold = true },
		Conceal = { fg = colors.grey },
		Ignore = { fg = colors.grey },
		MatchParen = { bg = colors.grey },
		Underlined = { fg = colors.niagara, underline = true },
		QuickFixLine = { bg = colors.bg_alt },

		-- Syntax highlighting
		Comment = { fg = colors.brown },
		Constant = { fg = colors.quartz },
		String = { fg = colors.green },
		Character = { fg = colors.green },
		Number = { fg = colors.wisteria },
		Boolean = { fg = colors.quartz },
		Float = { fg = colors.wisteria },

		Identifier = { fg = colors.fg },
		Function = { fg = colors.niagara },

		Statement = { fg = colors.yellow, bold = false },
		Conditional = { fg = colors.yellow, bold = false },
		Repeat = { fg = colors.yellow, bold = false },
		Label = { fg = colors.yellow, bold = false },
		Operator = { fg = colors.fg },
		Keyword = { fg = colors.yellow, bold = false },
		Exception = { fg = colors.yellow, bold = false },

		PreProc = { fg = colors.quartz },
		Include = { fg = colors.quartz },
		Define = { fg = colors.quartz },
		Macro = { fg = colors.quartz },
		PreCondit = { fg = colors.quartz },

		Type = { fg = colors.quartz },
		StorageClass = { fg = colors.quartz },
		Structure = { fg = colors.quartz },
		Typedef = { fg = colors.quartz },

		Special = { fg = colors.yellow },
		SpecialChar = { fg = colors.yellow },
		Tag = { fg = colors.yellow },
		Delimiter = { fg = colors.fg },
		SpecialComment = { fg = colors.green },
		Debug = { fg = colors.red },

		Error = { fg = colors.red },
		Todo = { fg = colors.yellow, bold = false },

		-- TreeSitter
		["@annotation"] = { fg = colors.quartz },
		["@attribute"] = { fg = colors.quartz },
		["@boolean"] = { fg = colors.quartz },
		["@character"] = { fg = colors.green },
		["@character.special"] = { fg = colors.yellow },
		["@comment"] = { fg = colors.brown },
		["@conditional"] = { fg = colors.yellow, bold = true },
		["@constant"] = { fg = colors.quartz },
		["@constant.builtin"] = { fg = colors.quartz },
		["@constant.macro"] = { fg = colors.quartz },
		["@constructor"] = { fg = colors.niagara },
		["@debug"] = { fg = colors.red },
		["@define"] = { fg = colors.quartz },
		["@error"] = { fg = colors.red },
		["@exception"] = { fg = colors.yellow, bold = false },
		["@field"] = { fg = colors.fg },
		["@float"] = { fg = colors.wisteria },
		["@function"] = { fg = colors.niagara },
		["@function.builtin"] = { fg = colors.yellow },
		["@function.call"] = { fg = colors.niagara },
		["@function.macro"] = { fg = colors.quartz },
		["@include"] = { fg = colors.quartz },
		["@keyword"] = { fg = colors.yellow, bold = false },
		["@keyword.function"] = { fg = colors.yellow, bold = false },
		["@keyword.operator"] = { fg = colors.yellow, bold = false },
		["@keyword.return"] = { fg = colors.yellow, bold = false },
		["@label"] = { fg = colors.yellow, bold = false },
		["@method"] = { fg = colors.niagara },
		["@method.call"] = { fg = colors.niagara },
		["@namespace"] = { fg = colors.quartz },
		["@none"] = { fg = colors.fg },
		["@number"] = { fg = colors.wisteria },
		["@operator"] = { fg = colors.fg },
		["@parameter"] = { fg = colors.fg },
		["@parameter.reference"] = { fg = colors.fg },
		["@property"] = { fg = colors.fg },
		["@punctuation.bracket"] = { fg = colors.fg },
		["@punctuation.delimiter"] = { fg = colors.fg },
		["@punctuation.special"] = { fg = colors.yellow },
		["@repeat"] = { fg = colors.yellow, bold = false },
		["@string"] = { fg = colors.green },
		["@string.escape"] = { fg = colors.yellow },
		["@string.regex"] = { fg = colors.yellow },
		["@string.special"] = { fg = colors.yellow },
		["@symbol"] = { fg = colors.quartz },
		["@tag"] = { fg = colors.yellow },
		["@tag.attribute"] = { fg = colors.quartz },
		["@tag.delimiter"] = { fg = colors.fg },
		["@text"] = { fg = colors.fg },
		["@text.danger"] = { fg = colors.red },
		["@text.emphasis"] = { italic = true },
		["@text.literal"] = { fg = colors.green },
		["@text.note"] = { fg = colors.brown },
		["@text.reference"] = { fg = colors.niagara, underline = true },
		["@text.strong"] = { bold = true },
		["@text.title"] = { fg = colors.niagara, bold = true },
		["@text.todo"] = { fg = colors.yellow, bold = false },
		["@text.underline"] = { underline = true },
		["@text.uri"] = { fg = colors.niagara, underline = true },
		["@text.warning"] = { fg = colors.yellow },
		["@type"] = { fg = colors.quartz },
		["@type.builtin"] = { fg = colors.quartz },
		["@type.definition"] = { fg = colors.quartz },
		["@type.qualifier"] = { fg = colors.quartz },
		["@variable"] = { fg = colors.fg },
		["@variable.builtin"] = { fg = colors.yellow },

		-- LSP
		LspReferenceText = { bg = colors.bg_alt },
		LspReferenceRead = { bg = colors.bg_alt },
		LspReferenceWrite = { bg = colors.bg_alt },
		LspSignatureActiveParameter = { bg = colors.grey },
		LspCodeLens = { fg = colors.brown },
		LspCodeLensSeparator = { fg = colors.grey },
		LspInfoBorder = { fg = colors.grey },

		-- Diagnostics
		DiagnosticError = { fg = colors.red },
		DiagnosticWarn = { fg = colors.yellow },
		DiagnosticInfo = { fg = colors.niagara },
		DiagnosticHint = { fg = colors.green },
		DiagnosticVirtualTextError = { fg = colors.red },
		DiagnosticVirtualTextWarn = { fg = colors.yellow },
		DiagnosticVirtualTextInfo = { fg = colors.niagara },
		DiagnosticVirtualTextHint = { fg = colors.green },
		DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
		DiagnosticUnderlineWarn = { sp = colors.yellow, undercurl = true },
		DiagnosticUnderlineInfo = { sp = colors.niagara, undercurl = true },
		DiagnosticUnderlineHint = { sp = colors.green, undercurl = true },

		-- Git Signs
		GitSignsAdd = { fg = colors.green },
		GitSignsChange = { fg = colors.yellow },
		GitSignsDelete = { fg = colors.red },
		GitSignsAddNr = { fg = colors.green },
		GitSignsChangeNr = { fg = colors.yellow },
		GitSignsDeleteNr = { fg = colors.red },
		GitSignsAddLn = { bg = colors.grey },
		GitSignsChangeLn = { bg = colors.grey },
		GitSignsDeleteLn = { bg = colors.red },

		-- Telescope
		TelescopeNormal = { fg = colors.fg, bg = colors.bg },
		TelescopeBorder = { fg = colors.grey },
		TelescopePromptNormal = { fg = colors.fg, bg = colors.bg_alt },
		TelescopePromptBorder = { fg = colors.grey },
		TelescopePromptTitle = { fg = colors.yellow, bold = true },
		TelescopePreviewTitle = { fg = colors.green, bold = false },
		TelescopeResultsTitle = { fg = colors.niagara, bold = true },
		TelescopeSelection = { bg = colors.bg_alt },
		TelescopeSelectionCaret = { fg = colors.yellow },
		TelescopeMatching = { fg = colors.yellow, bold = true },

		-- NvimTree
		NvimTreeNormal = { fg = colors.fg, bg = colors.bg },
		NvimTreeFolderIcon = { fg = colors.niagara },
		NvimTreeFolderName = { fg = colors.niagara },
		NvimTreeOpenedFolderName = { fg = colors.niagara, bold = true },
		NvimTreeRootFolder = { fg = colors.yellow, bold = true },
		NvimTreeSpecialFile = { fg = colors.yellow },
		NvimTreeExecFile = { fg = colors.green },
		NvimTreeGitDirty = { fg = colors.yellow },
		NvimTreeGitNew = { fg = colors.green },
		NvimTreeGitDeleted = { fg = colors.red },
		NvimTreeGitStaged = { fg = colors.green },
		NvimTreeWindowPicker = { fg = colors.black, bg = colors.yellow, bold = true },

		-- Neo-tree
		NeoTreeNormal = { fg = colors.fg, bg = colors.bg },
		NeoTreeNormalNC = { fg = colors.fg, bg = colors.bg },
		NeoTreeDirectoryIcon = { fg = colors.niagara },
		NeoTreeDirectoryName = { fg = colors.niagara },
		NeoTreeRootName = { fg = colors.yellow, bold = true },
		NeoTreeGitAdded = { fg = colors.green },
		NeoTreeGitModified = { fg = colors.yellow },
		NeoTreeGitDeleted = { fg = colors.red },
		NeoTreeGitUntracked = { fg = colors.brown },

		-- WhichKey
		WhichKey = { fg = colors.yellow },
		WhichKeyGroup = { fg = colors.niagara },
		WhichKeyDesc = { fg = colors.fg },
		WhichKeySeparator = { fg = colors.brown },
		WhichKeyFloat = { bg = colors.bg_alt },
		WhichKeyValue = { fg = colors.green },

		-- Indent Blankline
		IndentBlanklineChar = { fg = colors.grey },
		IndentBlanklineContextChar = { fg = colors.grey },
		IndentBlanklineContextStart = { sp = colors.grey, underline = true },

		-- nvim-cmp
		CmpItemAbbr = { fg = colors.fg },
		CmpItemAbbrDeprecated = { fg = colors.grey, strikethrough = true },
		CmpItemAbbrMatch = { fg = colors.yellow, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = colors.yellow },
		CmpItemKind = { fg = colors.niagara },
		CmpItemMenu = { fg = colors.brown },

		-- Hop
		HopNextKey = { fg = colors.yellow, bold = true },
		HopNextKey1 = { fg = colors.green, bold = true },
		HopNextKey2 = { fg = colors.niagara },
		HopUnmatched = { fg = colors.grey },

		-- Leap
		LeapMatch = { fg = colors.yellow, bold = true },
		LeapLabelPrimary = { fg = colors.black, bg = colors.yellow, bold = true },
		LeapLabelSecondary = { fg = colors.black, bg = colors.green, bold = true },
		LeapBackdrop = { fg = colors.grey },

		-- Dashboard
		DashboardHeader = { fg = colors.niagara },
		DashboardCenter = { fg = colors.fg },
		DashboardFooter = { fg = colors.brown },
		DashboardShortCut = { fg = colors.yellow },

		-- Notify
		NotifyERRORBorder = { fg = colors.red },
		NotifyWARNBorder = { fg = colors.yellow },
		NotifyINFOBorder = { fg = colors.niagara },
		NotifyDEBUGBorder = { fg = colors.brown },
		NotifyTRACEBorder = { fg = colors.wisteria },
		NotifyERRORIcon = { fg = colors.red },
		NotifyWARNIcon = { fg = colors.yellow },
		NotifyINFOIcon = { fg = colors.niagara },
		NotifyDEBUGIcon = { fg = colors.brown },
		NotifyTRACEIcon = { fg = colors.wisteria },
		NotifyERRORTitle = { fg = colors.red },
		NotifyWARNTitle = { fg = colors.yellow },
		NotifyINFOTitle = { fg = colors.niagara },
		NotifyDEBUGTitle = { fg = colors.brown },
		NotifyTRACETitle = { fg = colors.wisteria },

		-- Bufferline
		BufferLineFill = { bg = colors.black },
		BufferLineBackground = { fg = colors.grey, bg = colors.bg_alt },
		BufferLineTab = { fg = colors.grey, bg = colors.bg_alt },
		BufferLineTabSelected = { fg = colors.yellow, bg = colors.bg, bold = true },
		BufferLineBuffer = { fg = colors.grey, bg = colors.bg_alt },
		BufferLineBufferVisible = { fg = colors.fg, bg = colors.bg },
		BufferLineBufferSelected = { fg = colors.yellow, bg = colors.bg, bold = true },
		BufferLineIndicatorSelected = { fg = colors.yellow },
		BufferLineSeparator = { fg = colors.black, bg = colors.bg_alt },
		BufferLineSeparatorVisible = { fg = colors.black, bg = colors.bg },
		BufferLineSeparatorSelected = { fg = colors.black, bg = colors.bg },
		BufferLineCloseButton = { fg = colors.grey, bg = colors.bg_alt },
		BufferLineCloseButtonVisible = { fg = colors.grey, bg = colors.bg },
		BufferLineCloseButtonSelected = { fg = colors.red, bg = colors.bg },
		BufferLineModified = { fg = colors.yellow, bg = colors.bg_alt },
		BufferLineModifiedVisible = { fg = colors.yellow, bg = colors.bg },
		BufferLineModifiedSelected = { fg = colors.yellow, bg = colors.bg },
		BufferLineDiagnostic = { fg = colors.grey, bg = colors.bg_alt },
		BufferLineDiagnosticVisible = { fg = colors.grey, bg = colors.bg },
		BufferLineDiagnosticSelected = { fg = colors.fg, bg = colors.bg },
		BufferLineError = { fg = colors.red, bg = colors.bg_alt },
		BufferLineErrorVisible = { fg = colors.red, bg = colors.bg },
		BufferLineErrorSelected = { fg = colors.red, bg = colors.bg },
		BufferLineErrorDiagnostic = { fg = colors.red, bg = colors.bg_alt },
		BufferLineErrorDiagnosticVisible = { fg = colors.red, bg = colors.bg },
		BufferLineErrorDiagnosticSelected = { fg = colors.red, bg = colors.bg },
		BufferLineWarning = { fg = colors.yellow, bg = colors.bg_alt },
		BufferLineWarningVisible = { fg = colors.yellow, bg = colors.bg },
		BufferLineWarningSelected = { fg = colors.yellow, bg = colors.bg },
		BufferLineWarningDiagnostic = { fg = colors.yellow, bg = colors.bg_alt },
		BufferLineWarningDiagnosticVisible = { fg = colors.yellow, bg = colors.bg },
		BufferLineWarningDiagnosticSelected = { fg = colors.yellow, bg = colors.bg },
		BufferLineInfo = { fg = colors.niagara, bg = colors.bg_alt },
		BufferLineInfoVisible = { fg = colors.niagara, bg = colors.bg },
		BufferLineInfoSelected = { fg = colors.niagara, bg = colors.bg },
		BufferLineInfoDiagnostic = { fg = colors.niagara, bg = colors.bg_alt },
		BufferLineInfoDiagnosticVisible = { fg = colors.niagara, bg = colors.bg },
		BufferLineInfoDiagnosticSelected = { fg = colors.niagara, bg = colors.bg },
		BufferLineHint = { fg = colors.green, bg = colors.bg_alt },
		BufferLineHintVisible = { fg = colors.green, bg = colors.bg },
		BufferLineHintSelected = { fg = colors.green, bg = colors.bg },
		BufferLineHintDiagnostic = { fg = colors.green, bg = colors.bg_alt },
		BufferLineHintDiagnosticVisible = { fg = colors.green, bg = colors.bg },
		BufferLineHintDiagnosticSelected = { fg = colors.green, bg = colors.bg },

		-- Yanky
		YankyPut = { link = "Visual" },
		YankyYanked = { link = "Visual" },

		-- Highlight for the Treesitter sticky context.
		TreesitterContextBottom = { underline = true, sp = colors.wisteria },
	}

	for group, opts in pairs(groups) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
