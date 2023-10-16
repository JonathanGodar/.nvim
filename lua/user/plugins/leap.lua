-- Require leap
local leap = require('leap')
leap.add_default_mappings()

leap.opts.safe_labels = { "s", "f", "n", "u", "t",
	"S", "F", "N", "L", "H", "M", "U", "G", "T", "Z", "?", "/" }

leap.opts.safe_labels = { "s", "f", "n", "u", "t",
	"S", "F", "N", "L", "H", "M", "U", "G", "T", "Z", "?", "/" }

leap.opts.labels = {
	"s", "f", "n",
	"j", "k", "l", "h", "o", "d", "w", "e", "m", "b",
	"u", "y", "v", "r", "g", "t", "c", "x", "/", "z",
	"S", "F", "N",
	"J", "K", "L", "H", "O", "D", "W", "E", "M", "B",
	"U", "Y", "V", "R", "G", "T", "C", "X", "?", "Z"
}
