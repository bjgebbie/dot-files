return {
	{
		"navarasu/onedark.nvim",
		config = function()
			local onedark = require("onedark")
			onedark.setup({
				style = "dark",
				transparent = true,
			})
			onedark.load()
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		commit = "066fd6505377e3fd4aa219e61ce94c2b8bdb0b79",
		lazy = true,
		event = "BufReadPre",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				highlight = { enable = true },
				indent = { enable = true },
				auto_install = true,
			})
		end,
	},
}
