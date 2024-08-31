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

-- Colorscheme options
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split Windows
opt.splitright = true
opt.splitbelow = true

vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, { "ExtraGroup" })
-- vimscript: let g:transparent_groups = extend(get(g:, 'transparent_groups', []), ["ExtraGroup"])
