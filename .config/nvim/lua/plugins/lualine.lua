return {
	"nvim-lualine/lualine.nvim",
	commit = "d3ff69639e78f2732e86ae2130496bd2b66e25c9",
	lazy = false,
	config = function()
		require("lualine").setup({
			options = {
				component_separators = { left = "|", right = "|" },
				section_separators = { left = "", right = "" }, -- Rounded separators
				theme = "auto",
				always_divide_middle = true,
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
				lualine_b = { "filename", "branch" },
				lualine_c = {
					"%=", --[[ add your center components here in place of this comment ]]
				},
				lualine_x = {},
				lualine_y = { "filetype", "progress" },
				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 2 },
				},
			},
		})
	end,
}
