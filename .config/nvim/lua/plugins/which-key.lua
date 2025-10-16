return {
	"folke/which-key.nvim",
	lazy = true,
	event = "BufReadPre",
	version = "^3.0.0",
	plugins = {
		registers = true,
	},
	opts = {
		preset = "helix",
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
	config = function(_, opts)
		local which_key = require("which-key")
		which_key.add({
			{ "<leader>d", group = " Debug Keys" },
			{ "<leader>c", group = " Code Keys" },
			{ "<leader>l", group = " LSP Keys" },
			{ "<leader>f", group = " Telescope Keys" },
			{ "<leader>g", group = " Global Keys" },
		})
		which_key.setup(opts)
	end,
}
