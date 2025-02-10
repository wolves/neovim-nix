local wk = require("which-key")

local options = { noremap = false, silent = true }

-- Move to splits
vim.keymap.set("n", "<C-h>", "<C-w>h", options)
vim.keymap.set("n", "<C-j>", "<C-w>j", options)
vim.keymap.set("n", "<C-k>", "<C-w>k", options)
vim.keymap.set("n", "<C-l>", "<C-w>l", options)

-- Move to buffer
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", options)
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", options)

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<S-Up>", "<cmd>resize +2<CR>", options)
vim.keymap.set("n", "<S-Down>", "<cmd>resize -2<CR>", options)
vim.keymap.set("n", "<S-Left>", "<cmd>vertical resize -2<CR>", options)
vim.keymap.set("n", "<S-Right>", "<cmd>vertical resize +2<CR>", options)

-- Clear search with <esc>
vim.keymap.set("", "<esc>", ":noh<esc>", options)
vim.keymap.set("n", "gw", "*N", options)
vim.keymap.set("x", "gw", "*N", options)

wk.add({
  { "<leader>w", "<cmd>w!<CR>", desc = "Save" },
  { "<leader>q", "<cmd>q!<CR>", desc = "Quit" },

  { "<leader>b", group = "+buffer" },
  {
    "<leader>bd",
    "<cmd>lua require('mini.bufremove').delete(0, false)<CR>",
    desc = "Delete Buffer",
  },

  { "<leader>m", group = "+harpoon" },
  { "<leader>s", group = "+search" },
})
