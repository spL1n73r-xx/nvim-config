return {
  "scottmckendry/cyberdream.nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("cyberdream")
    require("cyberdream").setup({
      transparent = true,
      italic_comments = true,
      borderless_telescope = false,
      extensions = {
        telescope = true
      },  
    })
    end
}

