local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Tabs & Indents
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4

opt.wrap = false
opt.cursorline = true
opt.colorcolumn = "80"

-- Colorscheme options
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Changes/memory
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.scrolloff = 8
opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Split Windows
opt.splitright = true
opt.splitbelow = true

vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, { "ExtraGroup" })
-- vimscript: let g:transparent_groups = extend(get(g:, 'transparent_groups', []), ["ExtraGroup"])
