return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	keys = {
		{
			"<leader>gb",
			"<cmd>Gitsigns blame_line<cr>",
			desc = "Git Blame Line",
		},
		{
			"<leader>gB",
			"<cmd>Gitsigns blame<cr>",
			desc = "Git Blame Buffer",
		},
		{
			"<leader>gS",
			"<cmd>Gitsigns blame<cr>",
			desc = "Git Blame Buffer",
		},
		{
			"<leader>gd",
			"<cmd>Gitsigns diffthis<cr>",
			desc = "Git Diff",
		},
		{
			"<leader>gr",
			"<cmd>Gitsigns reset_hunk<cr>",
			desc = "Git Reset Hunk",
		},
		{
			"<leader>gR",
			"<cmd>Gitsigns reset_buffer<cr>",
			desc = "Git Reset Buffer",
		},
		{
			"<leader>gs",
			"<cmd>Gitsigns stage_hunk<cr>",
			desc = "Git Stage Hunk",
		},
		{
			"<leader>gS",
			"<cmd>Gitsigns stage_buffer<cr>",
			desc = "Git Stage Buffer",
		},
	},
}
