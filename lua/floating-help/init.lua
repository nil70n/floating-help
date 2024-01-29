local Core = require('floating-help.core')
local Utils = require('floating-help.utils')

local M = {}

M.setup = function(opts)
  require('floating-help.defaults')

  Utils.set_spec(opts)
  Core.create_autocmd()
end

Core.create_autocmd()

return M
