-- Unbind client defaults
for _, k in ipairs({
	"cmd+t",
	"cmd+w",
	"cmd+d",
	"shift+cmd+d",
	-- "cmd+k",  -- keep client default (session switcher)
	"cmd+n",
}) do
	rex.unbind(k)
end

-- Manage sessions
rex.bind("ctrl+a>s", "session.new")
rex.bind("ctrl+a>]", "session.next")
rex.bind("ctrl+a>[", "session.previous")
rex.bind("ctrl+a>shift+r", "session.rename")
rex.bind("ctrl+a>shift+q", "session.close")

-- Manage windows
rex.bind("ctrl+a>shift+n", "client.window.new")
rex.bind("ctrl+a>shift+x", "client.window.close")
rex.bind("ctrl+a>f", "client.window.fullscreen.toggle")

-- Manage tabs
rex.bind("ctrl+a>t", "client.tab.new")
rex.bind("ctrl+a>n", "client.tab.next")
rex.bind("ctrl+a>p", "client.tab.previous")
rex.bind("ctrl+a>shift+m", "client.tab.move_to_new_window")

-- Send a literal ctrl+a to the pane
rex.bind("ctrl+a>ctrl+a", "pane.send_key", { key = "ctrl+a" })

-- Split panes (\ is shift+\, i.e. |)
rex.bind("ctrl+a>shift+\\", "pane.split", { direction = "right" })
rex.bind("ctrl+a>-", "pane.split", { direction = "down" })

-- Focus panes with ctrl+h/j/k/l
rex.bind("ctrl+a>h", "pane.focus.left")
rex.bind("ctrl+a>j", "pane.focus.down")
rex.bind("ctrl+a>k", "pane.focus.up")
rex.bind("ctrl+a>l", "pane.focus.right")

-- Enter resize mode
rex.bind("ctrl+a>r", "client.mode.enter", { name = "resize" })

-- Exit the active key mode
rex.bind("ctrl+q", "client.mode.exit") -- Leaves the current mode only, and `esc` to leaves every mode

-- Close the focused pane (also dismisses agent popup)
rex.bind("ctrl+a>x", "pane.close")

-- Resize panes with h/j/k/l in resize mode
rex.bind("resize/h", "pane.resize", { direction = "left" })
rex.bind("resize/l", "pane.resize", { direction = "right" })
rex.bind("resize/k", "pane.resize", { direction = "up" })
rex.bind("resize/j", "pane.resize", { direction = "down" })

-- Agent launcher
rex.bind("ctrl+a>y", "launch_pi")
