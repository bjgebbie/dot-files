return {
	"williamboman/mason-lspconfig.nvim",
	version = "^2.0.0",
	lazy = false,
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"jdtls",
				"eslint",
				-- "rust_analyzer",
				-- "terraformls",
				-- "dockerls",
				-- "bashls",
				-- "clangd",
				-- "eslint",
				-- "yamlls",
			},
		})
	end,
}
