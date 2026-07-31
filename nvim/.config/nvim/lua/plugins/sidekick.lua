return {
	"folke/sidekick.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	opts = {
		nes = { enabled = false },
		cli = {
			win = {
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
			function()
				require("sidekick.cli").toggle({ name = "copilot", focus = true })
			end,
			desc = "Toggle Sidekick",
		},
		{
			"<leader>ss",
			function()
				require("sidekick.cli").send({ msg = "{selection}" })
			end,
			mode = { "x" },
			desc = "Send Visual Selection",
		},
		{
			"<leader>sq",
			function()
				require("sidekick.cli").close()
			end,
			desc = "Close Sidekick",
		},
	},
}
