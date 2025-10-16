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
				"javadbg",
				"js",
				-- "javatest", -- This doesn't work
			},
		})
	end,
}
