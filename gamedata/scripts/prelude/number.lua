local is_number = require("prelude/type").is_number

local function is_even(number)
  assert(is_number(number))
  return number % 2 == 0
end

local function is_odd(number)
  assert(is_number(number))
  return number % 2 == 1
end

return {
   is_even = is_even,
   is_odd = is_odd,
}
