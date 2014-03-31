require "luatoxml.luatoxml"

local luaobj = {
	root = {
		children = {
			{
				tag = {
					foo = "bar",
					boo = "far",
				}
			},
			{
				tag = {
					foo = "bar",
					boo = "far",
					"value"
				}
			},
			{
				tag = {
					foo = "bar",
					boo = "far",
					{ "emptychild" }
				}
			},
			{
				tag = {
					foo = "bar",
					boo = "far",
					"emptychild1",
					"emptychild2"
				}
			},
			{
				tag = "value"
			},
			"emptytag"
		}
	}
}

print(luatoxml.toxml(luaobj))
