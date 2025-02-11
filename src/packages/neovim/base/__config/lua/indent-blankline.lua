require("ibl").setup({
	indent = {
		char = "│",
		tab_char = "│",
	},
	scope = { enabled = false },
	exclude = {
		filetypes = {
			"help",
			"dashboard",
			"neo-tree",
			"Trouble",
			"lazy",
			"neogitstatus",
			"mason",
			"notify",
			"toggleterm",
			"lazyterm",
		},
	},
	-- show_trailing_blankline_indent = false,
})
