require "nvchad.options"

local o = vim.o
o.cursorlineopt = "both"
o.relativenumber = false
-- Keep 8 lines above/below cursor
o.scrolloff = 8
o.wrap = false
o.hlsearch = true
o.timeoutlen = 400
o.swapfile = false
-- for PHP
vim.opt.iskeyword:append "$"
