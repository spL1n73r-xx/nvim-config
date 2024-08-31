return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require('lualine').setup({
      options = {
        theme = 'cyberdream'
    },
    require('transparent').clear_prefix('luaLine')
  })
  end
}
