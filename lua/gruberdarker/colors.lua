---@class gruberdarker.Palette
---@field bg? string
---@field bg_alt? string
---@field fg? string
---@field red? string
---@field black? string
---@field green? string
---@field yellow? string
---@field brown? string
---@field quartz? string
---@field grey? string
---@field grey_alt? string
---@field niagara? string
---@field wisteria? string

---@class gruberdarker.Colors
---@field default gruberdarker.Palette
local M = {}

M.default = {
    bg = "#191919",
    bg_alt = "#202020",
    fg = "#e4e4ef",
    red = "#c73c3f",
    black = "#101010",
    green = "#73c936",
    yellow = "#ffdd33",
    brown = "#cc8c3c",
    quartz = "#a0b2a9",
    grey = "#545454",
    grey_alt = "#303030",
    niagara = "#788cb8",
    wisteria = "#9e95c7",
}

return M
