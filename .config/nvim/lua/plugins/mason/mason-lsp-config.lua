return {
	"williamboman/mason-lspconfig.nvim",
	version = "^2.0.0",
	lazy = false,
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")

		mason_lspconfig.setup({
			ensure_installed = {
				"rust_analyzer",
				"terraformls",
				"dockerls",
				"bashls",
				"clangd",
				"eslint",
				"lua_ls",
				"yamlls",
				"ts_ls",
			},
			automatic_installation = true,
		})
	end,
}
