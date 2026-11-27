-- Open pi in a floating layer, in the focused terminal's cwd
rex.action({
	name = "launch_pi",
	title = "Launch Pi",
	category = "Agents",

	run = function(ctx)
		local pwd = rex.block.call("com.superlogical.terminal", "pwd", { block_id = ctx.block_id })
		local cwd = pwd and pwd.pwd

		return rex.session.new_layer({
			bounds = { 0.1, 0.1, 0.8, 0.8 },
			focus = true,
			layout = rex.layout.block({
				flavor = "com.superlogical.terminal.shell",
				options = { cwd = cwd, command = { "pi" } },
			}),
		})
	end,
})
