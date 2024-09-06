return {
  "scottmckendry/cyberdream.nvim",
  priority = 1000,

  config = function()
    local cyberdream = require("cyberdream")

    cyberdream.setup({
      italic_comments = true,
      borderless_telescope = false,
      transparent = true,
      theme = {
        colors = {
          bg = "#090045",
        },
      },
      extensions = {
        cmp = true,
        whichkey = true,
      },
    })
    vim.cmd.colorscheme("cyberdream")
  end,
}

--[[ return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function ()
    vim.cmd("colorscheme tokyonight")
  end
} ]]
