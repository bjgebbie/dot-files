return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"rebelot/kanagawa.nvim", -- ensures kanagawa loads first
	},
	opts = {
		options = {
			theme = "kanagawa",
		},
	},
}
