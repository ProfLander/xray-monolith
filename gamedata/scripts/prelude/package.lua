local prelude_iterator = require("prelude/iterator")
local iter_map = prelude_iterator.iter_map
local iter_filter = prelude_iterator.iter_filter

local prelude_file = require("prelude/file")
local not_file_empty = prelude_file.not_file_empty
local flist_to_iter = prelude_file.flist_to_iter
local format_compiler_extensions = prelude_file.format_compiler_extensions

local prelude_path = require("prelude/path")
local strip_extension = prelude_path.strip_extension
local path_includes = prelude_path.path_includes

local function backslashes_to_slashes(s)
  assert(s ~= nil, "Missing argument `s`")
  return s:gsub("\\", "/")
end

local function strip_slash_init(s)
  assert(s ~= nil, "Missing argument `s`")
  return s:gsub("/init$", "")
end

local function path_to_package(s)
  assert(s ~= nil, "Missing argument `s`")
  return strip_slash_init(backslashes_to_slashes(strip_extension(s)))
end

local function file_to_package(file)
  assert(file ~= nil, "Missing argument `file`")
  return path_to_package(file:NameShort())
end

local function iter_files(fs, path, extensions, flags)
  assert(fs ~= nil, "Missing argument `fs`")
  assert(path ~= nil, "Missing argument `path`")
  assert(extensions ~= nil, "Missing argument `extensions`")
  flags = flags or FS.FS_ListFiles
  return flist_to_iter(fs:file_list_open_ex(path, flags, extensions))
end

local function package_hidden(pkg)
  assert(pkg ~= nil, "Missing argument `package`")
  return pkg:match("^%.")
end

local function not_package_hidden(pkg)
  assert(pkg ~= nil, "Missing argument `package`")
  return not package_hidden(pkg)
end

local function iter_packages()
   local exts = format_compiler_extensions()
   return iter_filter(
      not_package_hidden,
      iter_map(
         file_to_package,
         iter_filter(
            not_file_empty,
            iter_files(
               getFS(),
               "$game_scripts$",
               exts,
               FS.FS_ListFiles
            )
         )
      )
   )
end

local function iter_package_path(path)
  assert(path ~= nil, "Missing argument `path`")
  return iter_filter(
     path_includes(path),
     iter_packages()
  )
end

return {
   backslashes_to_slashes = backslashes_to_slashes,
   strip_slash_init = strip_slash_init,
   path_to_package = path_to_package,
   file_to_package = file_to_package,
   iter_files = iter_files,
   iter_packages = iter_packages,
   iter_package_path = iter_package_path,
}
