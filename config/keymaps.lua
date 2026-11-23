-- Strip client defaults
for _, k in ipairs({
	"cmd+t",
	"cmd+w",
	"cmd+d",
	"shift+cmd+d",
	"cmd+k",
	"cmd+n",
}) do
	rex.unbind(k)
end

-- Manage sessions
rex.bind("ctrl+a>s", "session.new")
rex.bind("ctrl+a>]", "session.next")
rex.bind("ctrl+a>[", "session.previous")
rex.bind("ctrl+a>k", "session.switch")
rex.bind("ctrl+a>shift+r", "session.rename")
rex.bind("ctrl+a>shift+q", "session.close")
rex.bind("ctrl+a>b", "session.back")
rex.bind("ctrl+a>l", "session.recent")

-- Manage windows
rex.bind("ctrl+a>shift+n", "client.window.new")
rex.bind("ctrl+a>shift+x", "client.window.close")
rex.bind("ctrl+a>f", "client.window.fullscreen.toggle")

-- Manage tabs
rex.bind("ctrl+a>t", "client.tab.new")
rex.bind("ctrl+a>n", "client.tab.next")
rex.bind("ctrl+a>p", "client.tab.previous")
rex.bind("ctrl+a>shift+m", "client.tab.move_to_new_window")
