local list_values = require("prelude/list").list_values

local function iter_values(...)
   local vals = {...}
   assert(vals ~= nil, "Missing argument `vals`")
   return list_values(vals)
end

local function iter_map(t, f, ...)
   assert(f ~= nil, "Missing argument `f`")
   assert(t ~= nil, "Missing argument `t`")

   local function g(...)
      local head = ...
      if head ~= nil then
         local out = f(head)
         if out ~= nil then
            return t(out)
         else
            return nil
         end
      else
         return nil
      end
   end

   return g, ...
end

local function iter_filter(do_take, f, ...)
  assert(f ~= nil, "Missing argument `f`")
  assert(do_take ~= nil, "Missing argument `do_take`")

  local function g(...)
    local out = nil

    while out == nil do
      local val = f(...)

      if not val then
         break
      end

      if do_take(val) then
         out = val
         break
      end
    end

    return out
  end

  return g, ...
end

local function iter_zip(a, b, is_short)
   local fa = a[1]
   local sa = a[2]
   local ca = a[3]

   local fb = b[1]
   local sb = b[2]
   local cb = b[3]

   assert(fa ~= nil, "Missing argument `fa`")
   assert(fb ~= nil, "Missing argument `fb`")

   local function f(a, b)
      local sa0 = a[1]
      local sb0 = a[2]

      local ca0 = b[1]
      local cb0 = b[2]

      local va = fa(sa0, ca0)
      local vb = fb(sb0, cb0)

      local is_done
      if is_short then
         is_done = va ~= nil and vb ~= nil
      else
         is_done = va ~= nil or vb ~= nil
      end

      if is_done then
         return {va, vb}
      else
         return nil
      end
   end
   return f, {sa, sb}, {ca, cb}
end

return {
   iter_values = iter_values,
   iter_map = iter_map,
   iter_filter = iter_filter,
   iter_zip = iter_zip,
}
