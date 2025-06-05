local iter_package_path = require("prelude/package").iter_package_path

local function fixup_G(path)
   assert(path ~= nil, "Missing argument `path`")
   return (path == "_g" and "_G") or path
end

local function import_list_impl(path, ignore, handle_error)
   assert(path ~= nil, "Missing argument `path`")

   handle_error = (handle_error or error)

   local tbl = {}
   local i = 0
   for pkg in iter_package_path(path) do
      local val

      if not (ignore and ignore[pkg]) then
         local res, out = pcall(require, fixup_G(pkg))
         if res == true and out ~= nil then
            val = out
         elseif res == false and out ~= nil then
            val = handle_error(out)
         else
            val = nil
         end
      else
         val = nil
      end

      if val ~= nil then
         i = (i + 1)
         tbl[i] = val
      end
   end

   return tbl
end

local function import_table_impl(path, ignore, handle_error)
   assert(path ~= nil, "Missing argument `path`")

   handle_error = handle_error or error

   local tbl = {}
   for pkg in iter_package_path(path) do
      local k, v = nil, nil

      if not (ignore and ignore[pkg]) then
         local res, out = pcall(require, fixup_G(pkg))

         if ((res == true) and out ~= nil) then
            k, v = pkg, out
         elseif ((res == false) and out ~= nil) then
            k, v = handle_error(out)
         end
      end

      if k ~= nil and v ~= nil then
         tbl[k] = v
      else

      end
   end

   return tbl
end

local function absolute_path(env, path)
   assert(env ~= nil, "Missing argument `env`")
   assert(path ~= nil, "Missing argument `path`")

   local is_init = env._FILE:match("\\init%.[^.]+$")
   local is_parent = path:match("^%.+/")
   local is_absolute = path:match("^/")

   local base = is_absolute and "" or env._PACKAGE

   if is_init and is_parent then
      path = path:sub(2)
   end

   if not is_init and not is_parent and not is_absolute then
      base = base:gsub("/[^/]+$", "")
   end

   if not is_absolute then
      path = base .. "/" .. path
   end

   return path
end

function import_table(path, ignore, handle_error)
   assert(path ~= nil, "Missing argument `path`")
   return import_table_impl(
       absolute_path(
          getfenv(2),
          path
       ),
       ignore,
       handle_error
   )
end

function import_list(path, ignore, handle_error)
   assert(path ~= nil, "Missing argument `path`")
   return import_list_impl(
      absolute_path(
         getfenv(2),
         path
      ),
      ignore,
      handle_error
   )
end

function import(path, ignore, handle_error)
   assert(path ~= nil, "Missing argument `path`")
   return unpack(
       import_list_impl(
          absolute_path(
             getfenv(2),
             path
          ),
          ignore,
          handle_error
       )
   )
end
