return {
    "rebelot/kanagawa.nvim",
    priority = 1000, -- make sure to load this before anything else
    config = function()
	-- load colorscheme here
	vim.cmd([[colorscheme kanagawa]])
    end,
}
