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
