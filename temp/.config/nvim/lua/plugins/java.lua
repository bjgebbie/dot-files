return {
	"nvim-java/nvim-java",
	version = "^2.0.0",
	ft = { "java" },
	config = function()
		require("java").setup({})
	end,
}
