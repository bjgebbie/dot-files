return {
	"mason-org/mason-lspconfig.nvim",
	lazy = false,
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = { "lua_ls", "gopls" },
	},
	keys = {
		{
			"<leader>lf",
			"<cmd>lua vim.lsp.buf.format()<cr>",
			desc = "Format File",
		},
		{
			"<leader>le",
			"<cmd>lua vim.diagnostic.open_float()<cr>",
			desc = "Diagnostics",
		},
		{
			"<leader>la",
			"<cmd>lua vim.lsp.buf.code_action()<cr>",
			desc = "Code Actions",
		},
		{
			"<leader>ld",
			"<cmd>lua vim.lsp.buf.definition()<cr>",
			desc = "Goto Definition",
		},
		{
			"<leader>lr",
			"<cmd>lua vim.lsp.buf.references()<cr>",
			desc = "Goto References",
		},
	},
}
