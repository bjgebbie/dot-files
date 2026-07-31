return {
	"folke/sidekick.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	opts = {},
	keys = {
		{ "<leader>sk", "<cmd>Sidekick<CR>", desc = "Toggle Sidekick" },
		{ "<Esc>", "<cmd>Sidekick<CR>", ft = "sidekick", desc = "Toggle Sidekick" },
		{ "<C-c>", "<cmd>Sidekick<CR>", ft = "sidekick", desc = "Toggle Sidekick" },
	},
}
