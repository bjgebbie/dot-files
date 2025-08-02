return {
	"folke/which-key.nvim",
	lazy = true,
	event = "BufReadPre",
	version = "^3.0.0",
	plugins = {
		registers = true,
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
	opts = {
		preset = "helix",
	},
}
