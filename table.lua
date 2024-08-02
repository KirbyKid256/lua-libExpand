-- Returns `true` if the table contains `entry`, otherwise returns `false`.
function table:contains(entry)
	for i, v in pairs(self) do
		if v == entry then
			return true
		end
	end
	return false
end

-- Looks for the first match of `entry` in the table and returns the index or key, otherwise returns `false`.
function table:find(entry)
	for i, v in pairs(self) do
		if v == entry then
			return i
		end
	end
	return false
end
