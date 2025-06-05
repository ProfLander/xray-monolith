local function list_values(list, idx)
   assert(list ~= nil, "Missing argument `list`")

   if not idx then
      idx = function(lst, i)
      return lst[i]
      end
   end

   local i = 1
   local function f(lst)
      local v = idx(lst, i)
      i = (1 + i)
      return v
   end

   return f, list
end

return {
   list_values = list_values,
}
