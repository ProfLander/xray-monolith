local function is_nil(arg)
   return (type(arg) == "nil")
end

local function is_number(arg)
   return (type(arg) == "number")
end

local function is_string(arg)
   return (type(arg) == "string")
end

local is_symbol = is_string

local function is_table(arg)
   return (type(arg) == "table")
end

local function is_list(arg)
   return is_table(arg)
      and (#arg == 0 or is_number(next(arg)))
end

return {
   is_nil = is_nil,
   is_number = is_number,
   is_string = is_string,
   is_symbol = is_symbol,
   is_table = is_table,
   is_list = is_list,
}
