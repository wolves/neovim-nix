local function fg(name)
	return function()
		---@type {foreground?:number}?
		local hl = vim.api.nvim_get_hl_by_name(name, true)
		return hl and hl.foreground and { fg = string.format("#%06x", hl.foreground) }
	end
end

require("lualine").setup({
  options = {
    theme = "auto",
    globalstatus = true,
    disabled_filetypes = { statusline = { "lazy" } },
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
    icons_enabled = true,
  },
  sections = {
    lualine_a = { { "mode", separator = { left = "" } } },
    lualine_b = { "branch" },
    lualine_c = {
      {
        "diagnostics",
        symbols = {
          error = " ",
          warn = " ",
          hint = " ",
          info = " ",
        },
      },
      { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
      { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
      {
        function()
          return require("nvim-navic").get_location()
        end,
        cond = function()
          return package.loaded["nvim-navic"] and require("nvim-navic").is_available()
        end,
      },
    },
    lualine_x = {
      {
        function()
          return require("noice").api.status.command.get()
        end,
        cond = function()
          return package.loaded["noice"] and require("noice").api.status.command.has()
        end,
        color = fg("Statement"),
      },
      {
        function()
          return require("noice").api.status.mode.get()
        end,
        cond = function()
          return package.loaded["noice"] and require("noice").api.status.mode.has()
        end,
        color = fg("Constant"),
      },
      -- { require("lazy.status").updates, cond = require("lazy.status").has_updates, color = fg("Special") },
      {
        "diff",
        symbols = {
          added = " ",
          modified = " ",
          removed = " ",
        },
      },
    },
    lualine_y = {
      { "progress", separator = "", padding = { left = 1, right = 0 } },
      { "location", padding = { left = 0, right = 1 } },
    },
    lualine_z = {
      {
        function()
          return " " .. os.date("%R")
        end,
        separator = { right = "" },
      },
    },
  },
  -- extensions = { "nvim-tree" },
})
