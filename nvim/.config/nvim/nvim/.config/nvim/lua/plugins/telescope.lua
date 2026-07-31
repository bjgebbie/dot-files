return {
	"nvim-telescope/telescope.nvim",
	version = "0.2.1",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	opts = {
		pickers = {
			find_files = {
				hidden = true,
				no_ignore = true,
			},
		},
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope Find files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope Live grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope Buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope Help tags" },
	},
}
