-- Returns a table from the string split between every `pattern`.
function string:split(pattern)
	local data = {}
	local from, to = 1, string.find(self, pattern)
	while to do
		table.insert(data, string.sub(self, from, to-1))
		from = to+pattern:len()
		to = string.find(self, pattern, from)
	end
	table.insert(data, string.sub(self, from))
	return data
end
