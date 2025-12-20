local colors = require("gruberdarker.colors")

local M = {}

function M.setup()
    local config = require("gruberdarker.config")
    local options = config.options
    local theme = {}
    ---@type gruberdarker.Palette
    local palette = colors.default

    if options.transparent then
        palette.bg = "NONE"
    end

    if options.terminal_colors then
        vim.o.termguicolors = true
        vim.g.terminal_color_0 = palette.bg
        vim.g.terminal_color_1 = palette.red
        vim.g.terminal_color_2 = palette.green
        vim.g.terminal_color_3 = palette.yellow
        vim.g.terminal_color_4 = palette.niagara
        vim.g.terminal_color_5 = palette.wisteria
        vim.g.terminal_color_6 = palette.quartz
        vim.g.terminal_color_7 = palette.fg
        vim.g.terminal_color_8 = palette.grey
        vim.g.terminal_color_9 = palette.red
        vim.g.terminal_color_10 = palette.green
        vim.g.terminal_color_11 = palette.yellow
        vim.g.terminal_color_12 = palette.niagara
        vim.g.terminal_color_13 = palette.wisteria
        vim.g.terminal_color_14 = palette.quartz
        vim.g.terminal_color_15 = palette.fg
    end

    theme.highlights = require("gruberdarker.extensions.base").get(options, palette)
    local extensions = options.extensions or {}
    for extension, enabled in pairs(extensions) do
        if enabled then
            local ex_config = require("gruberdarker.extensions." .. extension)
            theme.highlights = vim.tbl_deep_extend("force", theme.highlights, ex_config.get(options, palette))
        end
    end

    return theme
end

return M
