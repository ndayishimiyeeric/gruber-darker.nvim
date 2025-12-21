local colors = require("gruberdarker.colors")
local palette = colors.default

local gruberdarker = {
    normal = {
        a = { fg = palette.black, bg = palette.fg },
        b = { fg = palette.fg, bg = palette.bg_alt },
        c = { fg = palette.fg, bg = palette.bg_alt },
        x = { fg = palette.fg, bg = palette.bg_alt },
        y = { fg = palette.fg, bg = palette.bg_alt },
        Z = { fg = palette.black, bg = palette.fg },
    },
    insert = {
        a = { fg = palette.bg_alt, bg = palette.green },
        b = { fg = palette.green, bg = palette.bg_alt },
        y = { fg = palette.green, bg = palette.bg_alt },
        Z = { fg = palette.bg_alt, bg = palette.green },
    },
    visual = {
        a = { fg = palette.black, bg = palette.yellow },
        b = { fg = palette.yellow, bg = palette.bg_alt },
        y = { fg = palette.yellow, bg = palette.bg_alt },
        Z = { fg = palette.black, bg = palette.yellow },
    },
    command = {
        a = { fg = palette.black, bg = palette.brown },
        b = { fg = palette.brown, bg = palette.bg_alt },
        y = { fg = palette.brown, bg = palette.bg_alt },
        Z = { fg = palette.black, bg = palette.brown },
    },
    terminal = {
        a = { fg = palette.black, bg = palette.niagara },
        b = { fg = palette.niagara, bg = palette.bg_alt },
        y = { fg = palette.niagara, bg = palette.bg_alt },
        Z = { fg = palette.black, bg = palette.niagara },
    },
}

return gruberdarker
