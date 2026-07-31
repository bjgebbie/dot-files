return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = true,
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle File Explorer" },
	},
	opts = {
		filesystem = {
			hijack_netrw_behavior = "open_default",
		},
		window = {
			mappings = {
				["l"] = "open",
				["h"] = "close_node",
			},
		},
	},
}
