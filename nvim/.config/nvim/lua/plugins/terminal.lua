return {
	"akinsho/toggleterm.nvim",
	lazy = false,
	opts = {},
	keys = {
		{
			"<C-t>",
			"<cmd>ToggleTerm<cr>",
			desc = "Toggle Terminal",
		},
		{
			"<C-t>",
			[[<C-\><C-n><cmd>ToggleTerm<cr>]],
			mode = "t",
			desc = "Toggle Terminal",
		},
	},
}
