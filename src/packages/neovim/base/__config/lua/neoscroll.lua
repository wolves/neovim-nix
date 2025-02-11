-- NeoScroll Config
local neoscroll = require("neoscroll")
neoscroll.setup({})

local keymap = {}
keymap["<C-u>"] = function()
	neoscroll.ctrl_u({ duration = 80 })
end
keymap["<C-d>"] = function()
	neoscroll.ctrl_d({ duration = 80 })
end
keymap["<C-b>"] = function()
	neoscroll.ctrl_b({ duration = 250 })
end
keymap["<C-f>"] = function()
	neoscroll.ctrl_f({ duration = 250 })
end
keymap["<C-y>"] = function()
	neoscroll.scroll(-0.1, { move_cursor = false, duration = 80 })
end
keymap["<C-e>"] = function()
	neoscroll.scroll(0.1, { move_cursor = false, duration = 80 })
end
keymap["zt"] = function()
	neoscroll.zt({ half_win_duration = 150 })
end
keymap["zz"] = function()
	neoscroll.zz({ half_win_duration = 150 })
end
keymap["zb"] = function()
	neoscroll.zb({ half_win_duration = 150 })
end

local modes = { "n", "v", "x" }
for key, func in pairs(keymap) do
	vim.keymap.set(modes, key, func)
end
