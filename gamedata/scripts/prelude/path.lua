local list_values = require("prelude/list").list_values
local iter_zip = require("prelude/iterator").iter_zip

local PATTERN_FILE_PATH = "^(.-)([^\\/]-)%.([^\\/%.]-)%.?$"

local function strip_extension(s)
   assert(s ~= nil, "Missing argument s on unknown:9")
   local path, name, _ = s:match(PATTERN_FILE_PATH)
   return (path .. name)
end

local function resolve_relative_path(path)
   assert(path ~= nil, "Missing argument path on unknown:14")
   local head

   do
      local tbl = {}
      local i = 0
      for seg in path:gmatch("[^/]+") do
         local val = seg
         if val ~= nil then
            i = (i + 1)
            tbl[i] = val
         else
         end
      end
      head = tbl
   end

   local tail = {}
   while (#head > 0) do
      local val = table.remove(head)
      if val:match("[^.]") then
         table.insert(tail, 1, val)
      else
         while (#val > 0) do
            if (0 == #head) then
               error("Relative path cannot escape scripts root:\n" .. path)
            else
            end
            val = val:sub(2)
            table.remove(head)
         end
      end
   end

   return table.concat(tail, "/")
end

local function path_includes(path)
   assert(path ~= nil, "Missing argument `path`")
   local function impl(subj)
      assert(subj ~= nil, "Missing argument `subj`")
      local abs_path = resolve_relative_path(path)
      local subj_segs = {subj:gmatch("[^/]+")}
      local path_list

      do
         local tbl = {}
         local i = 0
         for seg in abs_path:gmatch("[^/]+") do
            local val = seg
            if val ~= nil then
               i = (i + 1)
               tbl[i] = val
            else
            end
         end
         path_list = tbl
      end

      local count = #path_list
      local tail = path_list[count]
      local multi = tail:match("^%*%*+$")
      local path_segs = {list_values(path_list)}
      local equal = true

      for pair in iter_zip(path_segs, subj_segs) do
         local va = pair[1]
         local vb = pair[2]
         if not equal then break end
         if (va ~= nil and vb ~= nil) then
            local va0 = va:lower()
            local vb0 = vb:lower()
            local pat = ("^" .. va0:gsub("%*", "%.%*") .. "$")
            equal = vb0:match(pat)
         elseif (va ~= nil and (vb == nil)) then
            equal = false
         elseif ((va == nil) and true) then
            equal = multi
         else
            equal = nil
         end
      end

      return equal
   end
   return impl
end

return {
    PATTERN_FILE_PATH = PATTERN_FILE_PATH,
    strip_extension = strip_extension,
    path_includes = path_includes,
}
