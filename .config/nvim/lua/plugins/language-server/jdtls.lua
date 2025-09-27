return {
	"mfussenegger/nvim-jdtls",
	ft = "java",
	config = function()
		local home = os.getenv("HOME")
		local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
		local workspace_dir = home .. "/.local/share/eclipse/" .. project_name

		local config = {
			cmd = {
				home .. "/.sdkman/candidates/java/21.0.8-amzn/bin/java", -- or '/path/to/java21_or_newer/bin/java'
				"-Declipse.application=org.eclipse.jdt.ls.core.id1",
				"-Dosgi.bundles.defaultStartLevel=4",
				"-Declipse.product=org.eclipse.jdt.ls.core.product",
				"-Dlog.protocol=true",
				"-Dlog.level=ALL",
				"-Xmx1g",
				"--add-modules=ALL-SYSTEM",
				"--add-opens",
				"java.base/java.util=ALL-UNNAMED",
				"--add-opens",
				"java.base/java.lang=ALL-UNNAMED",
				"-jar",
				home
					.. "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.7.0.v20250519-0528.jar",
				"-configuration",
				home .. "/.local/share/nvim/mason/packages/jdtls/config_linux",
				"-data",
				workspace_dir,
			},
			root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew" }),
			settings = {
				java = {},
			},
			init_options = {
				bundles = {},
			},
		}
		require("jdtls").start_or_attach(config)
	end,
}
