local telescope = require("telescope")
local wk = require("which-key")

telescope.setup({
  defaults = {
    file_ignore_patterns = { "^.git/" },
    prompt_prefix = " ",
    selection_caret = " ",
    layout_strategy = "vertical",
    layout_config = {
      prompt_position = "top",
    },
    path_display = {
      "truncate",
    },
    sorting_strategy = "ascending",
    winblend = borderless and 0 or 10,
  },
  extensions = {
    frecency = {
      db_safe_mode = false,
      show_scores = false,
      show_unindexed = true,
      default_workspace = "CWD",
      ignore_patterns = { "*.git/*", "*node_modules/*", "*dist/*", "*build/*" },
      sorter = require("telescope.config").values.file_sorter(),
    },
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
    },
  },
})

telescope.load_extension("frecency")
telescope.load_extension("fzf")

local function grep_string_prompt()
  require("telescope.builtin").grep_string({
    path_display = { "shorten" },
    search = vim.fn.input("Grep String ❱ "),
  })
end

local function grep_word()
  require("telescope.builtin").grep_string({
    path_display = { "shorten" },
    search = vim.fn.expand("<cword>"),
  })
end

wk.add({
  { "<leader><space>", "<cmd>lua require('telescope').extensions.frecency.frecency()<CR>", desc = "Find Files" },
  {
    "<leader>bb",
    "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
    desc = "Buffers",
  },
  { "<leader>ss", grep_string_prompt, desc = "Grep Prompt" },
  { "<leader>sw", grep_word, desc = "Grep Current Word" },
})
