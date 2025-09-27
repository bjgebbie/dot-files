return {
	setup = function(dap, mason_path)
		-- dap.adapters.java = {
		-- 	type = "executable",
		-- 	command = "java",
		-- 	args = {
		-- 		"-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005",
		-- 		"-jar",
		-- 		java_debug_adapter .. "/extension/server/com.microsoft.java.debug.plugin-0.53.2.jar",
		-- 	},
		-- }

		local home = os.getenv("HOME")

		dap.configurations.java = {
			{
				-- You need to extend the classPath to list your dependencies.
				-- `nvim-jdtls` would automatically add the `classPaths` property if it is missing
				-- classPaths = {},

				-- If using multi-module projects, remove otherwise.
				-- projectName = "yourProjectName",

				javaExec = home .. "/.sdkman/candidates/java/current/bin/java",
				mainClass = function()
					return vim.fn.input("Main class")
				end,

				-- If using the JDK9+ module system, this needs to be extended
				-- `nvim-jdtls` would automatically populate this property
				modulePaths = {},
				name = "Launch Main Class",
				request = "launch",
				type = "java",
			},
		}
	end,
}
