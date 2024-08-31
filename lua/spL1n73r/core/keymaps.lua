local keymap = vim.keymap

keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = "Clear search highlights" })
keymap.set('n', '<leader>sv', '<C-w>v', { desc = "Split window vertically" })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = "Split window horizontally" })
keymap.set('n', '<leader>se', '<C-w>=', { desc = "Make splits equal size" })
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = "Close current split" })
keymap.set('n', '<leader>tn', '<cmd>tabNext<CR>', { desc = "Next Tab" })
keymap.set('n', '<leader>tp', '<cmd>tabprevious<CR>', { desc = "Previous Tab" })
