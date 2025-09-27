return {
	"goolord/alpha-nvim",
	commit = "de72250e054e5e691b9736ee30db72c65d560771",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"echasnovski/mini.icons",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                                            ]],
			[[                                                                                            ]],
			[[                                                                                            ]],
			[[                                                                                            ]],
			[[                                                                                            ]],
			[[                                                                                            ]],
			[[                                                                                            ]],
			[[ ██████╗ ██████╗  █████╗ ██████╗ ██╗   ██╗      ██████╗ ███████╗██████╗ ██████╗ ██╗███████╗ ]],
			[[ ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║   ██║     ██╔════╝ ██╔════╝██╔══██╗██╔══██╗██║██╔════╝ ]],
			[[ ██████╔╝██████╔╝███████║██║  ██║╚██████╔╝     ██║  ███╗█████╗  ██████╔╝██████╔╝██║█████╗   ]],
			[[ ██╔══██╗██╔══██╗██╔══██║██║  ██║ ╚═██╔═╝      ██║   ██║██╔══╝  ██╔══██╗██╔══██╗██║██╔══╝   ]],
			[[ ███████║██║  ██║██║  ██║██████╔╝   ██║        ╚██████╔╝███████╗███████║███████║██║███████╗ ]],
			[[ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝    ╚═╝         ╚═════╝ ╚══════╝╚══════╝╚══════╝╚═╝╚══════╝ ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("r", "󰄉  Recent files", ":Telescope oldfiles<CR>"),
			dashboard.button("f", "󰍉  Find file", ":Telescope find_files <CR>"),
			dashboard.button("g", "󰦨  Find text", ":Telescope live_grep<CR>"),
			dashboard.button("l", "󱧕  Lazy", ":Lazy <CR>"),
			dashboard.button("m", "󱧘  Mason", ":Mason <CR>"),
			dashboard.button("e", "  Open Explorer", ":Neotree <CR> <C-t> <CR>"),
			dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
			-- dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
		}
		alpha.setup(dashboard.config)
	end,
}
