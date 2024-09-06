return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  },
  config = function()
    local nvim_tree = require("nvim-tree")
    nvim_tree.setup({
      vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>"),
    })
  end,
}
