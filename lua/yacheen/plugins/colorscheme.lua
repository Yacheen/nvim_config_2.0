-- return {
--     "rebelot/kanagawa.nvim",
--     priority = 1000, -- make sure to load this before anything else
--     config = function()
-- 	-- load colorscheme here
-- 	vim.cmd([[colorscheme kanagawa]])
--     end,
-- }
return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
        })
        vim.cmd([[colorscheme catppuccin]])
    end
}
-- return {
--     "AlexvZyl/nordic.nvim",
--     priority = 1000,
--     lazy = false,
--     config = function()
--         require 'nordic'.load()
--     end
-- }
