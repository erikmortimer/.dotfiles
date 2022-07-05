local Remap = require("bytefl0w.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<leader>u", ":UndotreeShow<CR>")

nnoremap("<leader>x", ":!chmod +x %<CR>")
inoremap("<C-c>", "<Esc>")

nnoremap("<C-k>", "<cmd>cnext<CR>zz")
nnoremap("<C-j>", "<cmd>cprev<CR>zz")
nnoremap("<leader>k", "<cmd>lnext<CR>zz")
nnoremap("<leader>j", "<cmd>lprev<CR>zz")

-- be able to activate tmux-session script from vim session
nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-session<CR>")
