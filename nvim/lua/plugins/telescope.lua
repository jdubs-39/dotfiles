return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					file_browser = {
						initial_mode = "normal",
					},
				},
			})
			local telescope = require("telescope.builtin")
			vim.keymap.set("n", "<leader>g", telescope.live_grep)
			vim.keymap.set("n", "<leader>f", telescope.find_files)
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").load_extension("file_browser")
			vim.keymap.set("n", "<leader>b", ":Telescope file_browser<CR>")
		end,
	},
}
