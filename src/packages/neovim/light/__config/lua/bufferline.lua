require("bufferline").setup({
  options = {
    always_show_bufferline = true,
    separator_style = "thin",
    indicator = {
      icon = "▎", -- this should be omitted if indicator style is not 'icon'
      style = "icon",
    },
    -- indicator = {
    --   style = "underline",
    -- },
    --diagnostics = "nvim_lsp",
    --diagnostics_indicator = function(_, _, diag)
      --  local icons = require("lazyvim.config.settings").icons.diagnostics
      --  local ret = (diag.error and icons.Error .. diag.error .. " " or "")
      --    .. (diag.warning and icons.Warn .. diag.warning or "")
      --  return vim.trim(ret)
      --end,
      offsets = {
        {
          filetype = "neo-tree",
          text = "EXPLORER",
          -- highlight = "Directory",
          text_align = "center",
          separator = true,
        },
      },
    }
})
