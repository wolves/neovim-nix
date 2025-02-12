-- local Util = require("util")
local wk = require("which-key")

wk.setup({
  show_help = false,
  plugins = { spelling = true },
})

wk.add({
  {
    mode = { "n", "v" },
    { "<leader>b", group = "+buffer" },
    { "<leader>c", group = "+code" },
    { "<leader>f", group = "+file" },
    { "<leader>g", group = "+git" },
    { "<leader>gh", group = "+hunk" },
    { "<leader>h", group = "+help" },
    { "<leader>q", group = "+quit/session" },
    { "<leader>t", group = "+toggle" },
    { "<leader>x", group = "+trouble/todo" },
    { "[", group = "+prev" },
    { "]", group = "+next" },
    { "g", group = "+goto" },
  },
})

vim.o.timeoutlen = 300

wk.add({
  { "<leader>gg", "<cmd>Neogit<CR>", desc = "Neogit" },

  { "<leader>gJ", "<cmd>TSJJoin<cr>", desc = "Join" },
  { "<leader>gS", "<cmd>TSJSplit<cr>", desc = "Split" },

  -- { "<leader>tc", Util.toggle_colors, desc = "Colorscheme Light/Dark" },
  -- { "<leader>tf", require("wlvs.lsp.format").toggle, desc = "Format on Save" },
  -- {
  --   "<leader>tn",
  --   function()
  --     Util.toggle("relativenumber", true)
  --     Util.toggle("number")
  --   end,
  --   desc = "Line Numbers",
  -- },
  -- {
  --   "<leader>ts",
  --   function()
  --     Util.toggle("spell")
  --   end,
  --   desc = "Spelling",
  -- },
  -- {
  --   "<leader>tw",
  --   function()
  --     Util.toggle("wrap")
  --   end,
  --   desc = "Word Wrap",
  -- },
})

-- Ignore <leader> with numerals
local ignores = {}
for i = 0, 10 do
  table.insert(ignores, { "<leader>" .. tostring(i), hidden = true })
end
wk.add(ignores)
