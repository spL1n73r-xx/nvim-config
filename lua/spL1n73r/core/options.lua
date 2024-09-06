local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Tabs & Indents
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2

opt.wrap = false
opt.cursorline = true

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Colorscheme options
opt.termguicolors = true
-- opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split Windows
opt.splitright = true
opt.splitbelow = true
