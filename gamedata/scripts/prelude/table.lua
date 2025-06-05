local function join(...)
   local tbls = {...}
   assert(tbls ~= nil, "Missing argument `tbls`")
   local dest = {}
   for _, tbl in ipairs(tbls) do
      local d = dest
      for k, v in pairs(tbl) do
         d[k] = v
         d = d
      end
      dest = d
   end
   return dest
end

return {
   join = join,
}
