local keymap = vim.keymap

keymap.set('n', '<leader>pv', ':Ex<CR>', { desc = "Return to project view when in using nvim via netrw" })
keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = "Clear search highlights" })
keymap.set('n', '<leader>sv', '<C-w>v', { desc = "Split window vertically" })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = "Split window horizontally" })
keymap.set('n', '<leader>se', '<C-w>=', { desc = "Make splits equal size" })
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = "Close current split" })
keymap.set('n', '<leader>tn', '<cmd>tabNext<CR>', { desc = "Next Tab" })
keymap.set('n', '<leader>tp', '<cmd>tabprevious<CR>', { desc = "Previous Tab" })

-- ThePrimeagen's Flashy Highlight on yank
-- Double tap y to yank to system clip board. Accompanied by a visual flash
local augroup = vim.api.nvim_create_augroup
local ThePrimeagenGroup = augroup('ThePrimeagen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})
