require("harpoon").setup()
local wk = require("which-key")

wk.add({
  { "<leader>mt", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Quick Menu" },
  { "<leader>mm", "<cmd>lua require('harpoon.mark').add_file()<CR>", desc = "Mark File" },
  { "<leader>mn", "<cmd>lua require('harpoon.ui').nav_next()<CR>", desc = "Next Mark" },
  { "<leader>mp", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", desc = "Prev Mark" },
  { "<leader>ma", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", desc = "Mark 1" },
  { "<leader>ms", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", desc = "Mark 2" },
  { "<leader>md", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", desc = "Mark 3" },
  { "<leader>mf", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", desc = "Mark 4" },
})
