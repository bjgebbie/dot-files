return {
	"jay-babu/mason-nvim-dap.nvim",
	lazy = false,
	version = "^2.5.1",
	dependencies = {
		"williamboman/mason.nvim",
		"mfussenegger/nvim-dap",
	},
	config = function()
		require("mason-nvim-dap").setup({
			ensure_installed = {
				"js",
				-- "java",
			},
			automatic_installation = true,
		})
	end,
}
