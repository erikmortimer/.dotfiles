local Remap = require("bytefl0w.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

-- Setup nvim-cmp
local cmp = require("cmp")
cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    
    mapping = cmp.mapping.preset.insert({
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),

    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
    }
})

local function config(_config)
    return vim.tbl_deep_extend("force", {
        capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = function()
            nnoremap("gd", function() vim.lsp.buf.definition() end)
	    nnoremap("K", function() vim.lsp.buf.hover() end)
	    nnoremap("<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
	    nnoremap("<leader>vd", function() vim.diagnostic.open_float() end)
            nnoremap("[d", function() vim.diagnostic.goto_next() end)
	    nnoremap("]d", function() vim.diagnostic.goto_prev() end)
	    nnoremap("<leader>vca", function() vim.lsp.buf.code_action() end)
	    nnoremap("<leader>vrr", function() vim.lsp.buf.references() end)
	    nnoremap("<leader>vrn", function() vim.lsp.buf.rename() end)
    	    inoremap("<C-h>", function() vim.lsp.buf.signature_help() end)
        end,
    }, _config or {})
end


-- Python
-- require("lspconfig").jedi_language_server.setup(config())

-- Go
require("lspconfig").gopls.setup(config({
    cmd = { "gopls", "serve" },
    settings = {
        gopls = {
            analysis = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
}))

-- Rust
require("lspconfig").rust_analyzer.setup(config())
