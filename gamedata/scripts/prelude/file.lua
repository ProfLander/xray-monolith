local list_values = require("prelude/list").list_values

local function is_file_empty(file)
   assert(file ~= nil, "Missing argument `file`")
   return file:Size() == 0
end

local function not_file_empty(file)
   assert(file ~= nil, "Missing argument `file`")
   return not is_file_empty(file)
end

local function flist_to_iter(flist)
   assert(flist ~= nil, "Missing argument `flist`")

   return list_values(
      flist,
      function(list, i)
         local idx = (i - 1)
         if (idx < list:Size()) then
            return list:GetAt(idx)
         else
            return nil
         end
      end
   )
end

local function format_extensions(extensions)
  assert(extensions ~= nil, "Missing argument `extensions`")

   local exts = nil
   for _, v in ipairs(extensions) do
      v = "*." .. v
      if exts then
         exts = exts .. "," .. v
      else
         exts = v
      end
   end

  return exts
end

local function format_compiler_extensions()
   return format_extensions(require("scam/compiler").get_extensions())
end

return {
   is_file_empty = is_file_empty,
   not_file_empty = not_file_empty,
   flist_to_iter = flist_to_iter,
   format_extensions = format_extensions,
   format_compiler_extensions = format_compiler_extensions,
}
