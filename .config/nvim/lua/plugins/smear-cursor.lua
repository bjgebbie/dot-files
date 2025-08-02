return {
	"sphamba/smear-cursor.nvim",
	lazy = true,
	event = "BufReadPre",
	version = "^0.0.0",
	config = function()
		require("smear_cursor").setup({
			cursor_color = "#47ABFC",
			never_draw_over_target = true,
			gamma = 1,
		})
	end,
}
