--- Script Compilers And Macros
--- Script preprocess dispatch machinery

-- Setup compiler
local compiler = require("scam/compiler")

-- Setup import machinery
require("scam/import")

return {
   compiler = compiler
}
