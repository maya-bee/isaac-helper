--- Utility functions for doing math.

local ExtraMath = {}
ExtraMath._VERSION = '2.1.0'
ExtraMath._VERSION_NUM = 3
ExtraMath.Enum = {}

function ExtraMath.Clamp(value, min, max)
    if value < min then
        return min
    elseif value > max then
        return max
    end
    return value
end

--- Returns the value provided rounded to the nearest integer.
function ExtraMath.Round(num) -- this accounts for floating point inaccuracies
    local ofs = 2^52
    if math.abs(num) > ofs then
      return num
    end
    return num < 0 and num - ofs + ofs or num + ofs - ofs
end

function ExtraMath.Sqrt(x)
    return x ^ 0.5
end

function ExtraMath.Pow(x, power)
    return x ^ power
end

function ExtraMath.Init(ModReference, ModFileName)
    return true
end

return ExtraMath