return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
		},
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		-- local actions = require("telescope.actions")
		-- local cyberdream = require("cyberdream")
		telescope.setup({
			defaults = {
				path_display = { "smart" },
			},
		})
		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap
		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files in working directory" })
		keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Find string in working directory" })
		--[[ cyberdream.setup({
      colors = {
        bd = "#000b1e"
      },
    }) ]]
	end,
}
