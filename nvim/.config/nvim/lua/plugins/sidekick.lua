return {
	"folke/sidekick.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	opts = {
		cli = {
			win = {
				layout = "float",
				float = {
					height = 0.9,
					width = 0.9,
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
			mode = "n",
			ft = "sidekick",
			desc = "Close Sidekick",
		},
	},
}
