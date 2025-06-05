local function begins_with(head, str)
   assert(str ~= nil, "Missing argument `str`")
   assert(head ~= nil, "Missing argument `head`")
   return str:match("^" .. head)
end

local function ends_with(tail, str)
   assert(str ~= nil, "Missing argument `str`")
   assert(str ~= nil, "Missing argument `tail`")
   return str:match(tail .. "$")
end

return {
   begins_with = begins_with,
   ends_with = ends_with,
}
