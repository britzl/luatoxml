luatoxml
========
Converts a Lua value (table) into properly formatted XML

example
=======
Consider the following Lua table:

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

Parse it like this:

	local xml = luatoxml.toxml(luaobj)
	print(xml)

Resulting output:

	<root>
		<children>
			<tag boo="far" foo="bar"/>
			<tag boo="far" foo="bar">value</tag>
			<tag boo="far" foo="bar">
				<emptychild/>
			</tag>
			<tag boo="far" foo="bar">
				<emptychild1/>
				<emptychild2/>
			</tag>
			<tag>value</tag>
			<emptytag/>
		</children>
	</root>
