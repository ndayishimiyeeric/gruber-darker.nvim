local colors = require("gruberdarker.colors")
local palette = colors.default

local gruberdarker = {
    normal = {
        a = { fg = palette.black, bg = palette.fg },
        b = { fg = palette.fg, bg = palette.bg2 },
        c = { fg = palette.fg, bg = palette.bg2 },
        x = { fg = palette.fg, bg = palette.bg2 },
        y = { fg = palette.fg, bg = palette.bg2 },
        Z = { fg = palette.black, bg = palette.fg },
    },
    insert = {
        a = { fg = palette.bg2, bg = palette.green },
        b = { fg = palette.green, bg = palette.bg2 },
        y = { fg = palette.green, bg = palette.bg2 },
        Z = { fg = palette.bg2, bg = palette.green },
    },
    visual = {
        a = { fg = palette.black, bg = palette.yellow },
        b = { fg = palette.yellow, bg = palette.bg2 },
        y = { fg = palette.yellow, bg = palette.bg2 },
        Z = { fg = palette.black, bg = palette.yellow },
    },
    command = {
        a = { fg = palette.black, bg = palette.brown },
        b = { fg = palette.brown, bg = palette.bg2 },
        y = { fg = palette.brown, bg = palette.bg2 },
        Z = { fg = palette.black, bg = palette.brown },
    },
    terminal = {
        a = { fg = palette.black, bg = palette.niagara },
        b = { fg = palette.niagara, bg = palette.bg2 },
        y = { fg = palette.niagara, bg = palette.bg2 },
        Z = { fg = palette.black, bg = palette.niagara },
    },
}

return gruberdarker
