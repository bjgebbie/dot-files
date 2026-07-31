return {
	"folke/noice.nvim",
	lazy = false,
	opts = {},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	keys = {
		{
			"<Esc>",
			"<cmd>lua require('notify').dismiss()<cr>",
			desc = "Clears notifications",
		},
	},
}
