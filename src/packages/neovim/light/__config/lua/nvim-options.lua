vim.g.mapleader = " "
vim.g.maplocalleader = " "

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


vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
--vim.g.ruby_host_prog = "/home/wlvs/.asdf/shims/ruby"
vim.g.skip_ts_context_commentstring_module = true


vim.opt.number = true
vim.opt.relativenumber = true
