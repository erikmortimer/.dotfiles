local Remap = require("bytefl0w.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>x", ":!chmod +x %<CR>")
inoremap("<C-c>", "<Esc>")
