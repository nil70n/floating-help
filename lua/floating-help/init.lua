local Functions = require('floating-help.functions')
local Core = require('floating-help.core')

local M = {}

M.setup = function(opts)
  Functions.initialize(opts)
  Core.create_autocmd()
end

return M
