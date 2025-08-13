return {
	"mfussenegger/nvim-dap",
	config = function()
		require("dap")
		local dap = require("dap")

		-- Get the js-debug-adapter path from Mason
		local mason_path = vim.fn.stdpath("data") .. "/mason"
		local js_debug_path = mason_path .. "/packages/js-debug-adapter"

		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			port = "${port}",
			executable = {
				command = "node",
				args = { js_debug_path .. "/js-debug/src/dapDebugServer.js", "${port}" },
			},
		}

		dap.configurations.typescript = {
			{
				type = "pwa-node",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				cwd = vim.fn.getcwd(),
				sourceMaps = true,
				protocol = "inspector",
				outFiles = { "${workspaceFolder}/dist/**/*.js" },
			},
			{
				type = "pwa-node",
				request = "attach",
				name = "Attach to process",
				processId = require("dap.utils").pick_process,
				cwd = vim.fn.getcwd(),
				sourceMaps = true,
				outFiles = { "${workspaceFolder}/dist/**/*.js" },
			},
		}
	end,
}
