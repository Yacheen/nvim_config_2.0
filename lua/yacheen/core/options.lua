local opt = vim.opt -- conciseness kekw

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
-- css is being a piece of shit
vim.g.css_recommended_style = 0
vim.g.scss_recommended_style = 0
vim.g.sass_recommended_style = 0

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" -- ?

--backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- remove greybar on left side of vim
opt.signcolumn = "no"
vim.cmd([[
augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:hor20
augroup END
]])

-- turn off swapfile
opt.swapfile = false
