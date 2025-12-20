local M = {}

---@param syntax table
function M.syntax(syntax)
    for group, colors in pairs(syntax) do
        vim.api.nvim_set_hl(0, group, colors)
    end
end

---@param theme table
function M.load(theme)
    if vim.g.colors_name then
        vim.cmd("hi clear")
        if vim.fn.exists("syntax_on") then
            vim.cmd.syntax("reset")
        end
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "gruberdarker"

    M.syntax(theme.highlights)
end

return M
