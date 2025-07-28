return {
	"nvim-lualine/lualine.nvim",
    commit = "d3ff69639e78f2732e86ae2130496bd2b66e25c9",
	config = function()
		require("lualine").setup({
			options = {
				theme = "everforest",
			},
		})
	end,
}
