luatoxml = {}


local indentation = ""

--- Parse a lua value and transform it to XML
-- If the value is of type string it will be transformed into a tag eg <value/>
-- If the value is a table each of it's key value pairs will be converted like this:
--  * If the key is a number parsevalue will be called again with the value as argument
--  * If the key is a string and value is a string a tag will be created with the key as XML tag element and the value as XML-value (eg <key>value</key>)
--  * If the key is a string and value is a table a tag will be created with the key as XML tag element and the table values as XML-attributes and nested tags (eg <key a="b"><c... </key> 
-- @param value The value to parse
-- @return The value as XML
local function toxml(value)
	local xml = ""
	local t = type(value)
	if t == "string" then
		xml = xml .. indentation .. "<" .. tostring(value) .. "/>\n"
	elseif t == "table" then
		for name,data in pairs(value) do
			if type(name) == "number" then
				xml = xml .. toxml(data)
			else
				xml = xml .. indentation .. "<" .. name				
				if type(data) == "table" then	
					local tags = {}
					for k,v in pairs(data) do
						local t = type(v)
						if t == "table" then
							tags[k] = v
						elseif type(k) == "string" then
							xml = xml .. " " ..k .. '="' .. tostring(v) .. '"'
						end
					end
				
					if next(tags) ~= nil then	
						xml = xml .. ">\n"
						indentation = indentation .. "\t"
						xml = xml .. toxml(tags)
						indentation = indentation:sub(1,#indentation-1)
						xml = xml .. indentation .. "</" .. name .. ">\n"
					else
						xml = xml .. "/>\n"
					end
				else
					xml = xml .. ">"..data.."</" .. name ..">\n"	
				end				
			end
		end
	end
	return xml
end


luatoxml.toxml = toxml