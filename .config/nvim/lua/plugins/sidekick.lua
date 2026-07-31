return {
	"folke/sidekick.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	opts = {
		nes = { enabled = false },
		cli = {
			win = {
				-- layout = "float",
				-- float = {
				-- 	height = 0.9,
				-- 	width = 0.9,
				-- },
				keys = {
					nav_left = { "<A-h>", "nav_left", expr = true, desc = "navigate to the left window" },
					nav_down = { "<A-j>", "nav_down", expr = true, desc = "navigate to the below window" },
					nav_up = { "<A-k>", "nav_up", expr = true, desc = "navigate to the above window" },
					nav_right = { "<A-l>", "nav_right", expr = true, desc = "navigate to the right window" },
				},
			},
		},
	},
	keys = {
		{
			"<leader>sk",
			"<cmd>lua require('sidekick.cli').toggle({name='copilot',focus=true})<CR>",
			desc = "Toggle Sidekick",
		},
		{
			"<Esc>",
			"<cmd>lua require('sidekick.cli').close()<CR>",
			desc = "Close Sidekick",
		},
	},
}
