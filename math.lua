-- Clamps `value` and returns the result in between `min` and `max`.
function math.clamp(value, min, max)
	return math.min(math.max(value, min), max)
end

-- Wraps `value` around `min` and `max` and returns the result.
function math.wrap(value, min, max)
	local range = max - min

	if value < min then
		if value >= 0 then -- Positive check
			value = value + (range * (min - value) / range)
		elseif value < 0 then -- Negative check
			value = value - (range * (min + value) / range)
		end
	end
	
	return min + (value - min) % range
end
