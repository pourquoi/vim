return {
	{
		"echasnovski/mini.surround",
		version = false,
		config = function()
			require("mini.surround").setup({
				mappings = {
					add = "za", -- Add surrounding in Normal and Visual modes
					delete = "zd", -- Delete surrounding
					find = "", -- Find surrounding (to the right)
					find_left = "", -- Find surrounding (to the left)
					highlight = "zh", -- Highlight surrounding
					replace = "zr", -- Replace surrounding
					update_n_lines = "", -- Update `n_lines`

					suffix_last = "", -- Suffix to search with "prev" method
					suffix_next = "", -- Suffix to search with "next" method
				},
			})
		end,
	},
}
