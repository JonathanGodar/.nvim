local dap = require('dap')
dap.adapters.codelldb = {
  type = 'server',
  host = '127.0.0.1',
  port = 3032 -- 💀 Use the port printed out or specified with `--port`
}


dap.configurations.rust = {
  {
	name = "Launch file",
	request = "launch",
	type = "codelldb",
	-- cargo = {
	-- 	args = {"test"}
	-- },
	program = "cargo",
	args = { "run" }
    -- cwd = '${workspaceFolder}',
    -- stopOnEntry = false,
  },
}
