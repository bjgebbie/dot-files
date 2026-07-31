return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	config = function()
		local theme = require("kanagawa")

		theme.setup({
			transparent = true,
		})

		theme.load("wave")
	end,
}
