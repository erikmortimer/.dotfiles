local augroup = vim.api.nvim_create_augroup
ByteFl0wGroup = augroup('ByteFl0w', {})

require("bytefl0w.set")
require("bytefl0w.packer")
require("bytefl0w.lsp")
require("bytefl0w.telescope")

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
