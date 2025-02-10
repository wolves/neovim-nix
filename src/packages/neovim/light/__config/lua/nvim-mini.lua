local opt = { noremap = true }
local wk = require("which-key")

-- vim.api.nvim_set_keymap("n", "<leader>e", ":lua require('mini.files').open()<CR>", opt)

wk.add({
  { "<leader>e", "<cmd>lua require('mini.files').open()<CR>", desc = "File Explorer" },
})
