local wk = require("which-key")

wk.add({
	{ "<leader>e", "<cmd>lua require('mini.files').open()<CR>", desc = "File Explorer" },
})
