{pkgs}:
with pkgs.vimPlugins; [
  # Look & Feel
  # ----------------
  indent-blankline-nvim
  neoscroll-nvim
  nvim-colorizer-lua
  nvim-treesitter-context
  nvim-ts-context-commentstring
  rainbow-delimiters-nvim
  todo-comments-nvim
  nvim-web-devicons

  # Completion
  # ----------------
  blink-cmp

  # Languages
  # ----------------
  vim-just

  # Linting & Formatting
  # ----------------

  # LSP
  # ----------------
  nvim-lspconfig

  # Snippets
  # ----------------
  luasnip
  friendly-snippets

  # Terminal
  # ----------------
  toggleterm-nvim

  # Text Editing
  # ----------------
  treesj
 
  # Version Control
  # ----------------
  neogit
  gitsigns-nvim
]
