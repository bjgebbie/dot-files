return {
	"saghen/blink.cmp",
	version = "1.*",
	dependencies = {
		"saghen/blink.lib",
		"rafamadriz/friendly-snippets",
	},
	opts = {
		fuzzy = { implementation = "lua" },
		keymap = {
			["<tab>"] = { "select_next", "fallback" },
			["<s-tab>"] = { "select_prev", "fallback" },
			["<cr>"] = { "accept", "fallback" },
		},
	},
}
