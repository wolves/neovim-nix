-- Globals
-- ----------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
--vim.g.ruby_host_prog = "/home/wlvs/.asdf/shims/ruby"
vim.g.skip_ts_context_commentstring_module = true

-- Use proper syntax highlighting in code blocks
local fences = {
	"lua",
	-- "vim",
	"json",
	"typescript",
	"javascript",
	"js=javascript",
	"ts=typescript",
	"shell=sh",
	"python",
	"sh",
	"console=sh",
}
vim.g.markdown_fenced_languages = fences

-- Options
-- ----------------
local indent = 2

local notify = {
	old = vim.notify,
	lazy = nil,
}
notify.lazy = function(...)
	local args = { ... }
	vim.defer_fn(function()
		if vim.notify == notify.lazy then
			notify.old(unpack(args))
		else
			vim.notify(unpack(args))
		end
	end, 300)
end
vim.notify = notify.lazy

if vim.fn.has("nvim-0.8") == 1 then
	--   vim.opt.spell = true -- Put new windows below current
	vim.opt.cmdheight = 0

	-- make all keymaps silent by default
	local keymap_set = vim.keymap.set
	vim.keymap.set = function(mode, lhs, rhs, opts)
		opts = opts or {}
		opts.silent = opts.silent ~= false
		return keymap_set(mode, lhs, rhs, opts)
	end
end

if vim.fn.has("nvim-0.9.0") == 1 then
	vim.opt.splitkeep = "screen"
end

vim.opt.autowrite = true
vim.opt.clipboard = "unnamedplus"
vim.opt.conceallevel = 3
vim.opt.confirm = true
vim.opt.cursorline = true
vim.opt.expandtab = true

vim.o.formatoptions = "jcroqlnt"

vim.opt.guifont = "FiraCode Nerd Font:h12"
vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.inccommand = "nosplit"
vim.opt.joinspaces = false
vim.opt.list = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.pumblend = 10
vim.opt.pumheight = 10
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8
vim.opt.shiftround = true
vim.opt.shiftwidth = indent
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = indent
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.updatetime = 200
vim.opt.wildmode = "longest:full,full"
vim.opt.wrap = false
vim.opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
vim.opt.fillchars = {
	--   horiz = "━",
	--   horizup = "┻",
	--   horizdown = "┳",
	--   vert = "┃",
	--   vertleft = "┫",
	--   vertright = "┣",
	--   verthoriz = "╋",im.o.fillchars = [[eob: ,
	-- fold = " ",
	foldopen = "",
	-- foldsep = " ",
	foldclose = "",
}
