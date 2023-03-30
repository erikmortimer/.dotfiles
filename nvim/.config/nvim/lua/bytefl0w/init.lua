require("bytefl0w.set")
require("bytefl0w.remap")
require("bytefl0w.packer")

local augroup = vim.api.nvim_create_augroup
local ByteFl0wGroup = augroup('ByteFl0w', {})

-- function R(name)
--     require("plenary.reload").reload_module(name)
-- end

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
