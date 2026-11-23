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
