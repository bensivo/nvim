require("mason").setup({
	-- list of language servers here: https://github.com/williamboman/mason-lspconfig.nvim
	ensure_installed = { "pyright" }
})
require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...
require("lspconfig").pyright.setup {}
