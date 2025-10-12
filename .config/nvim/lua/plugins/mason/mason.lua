return {
	"williamboman/mason.nvim",
	version = "^2.0.0",
	lazy = false,
	config = function()
		require("mason").setup({
			ui = {
				border = "rounded",
			},
		})
	end,
}
