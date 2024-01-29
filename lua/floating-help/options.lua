local Defaults = require('floating-help.defaults')
local M        = {}

M.plugin       = {
  mode = Defaults.args.mode,
}

M.float_opts   = {
  border = Defaults.args.border,
  style = 'minimal',
  anchor = 'NW',
  relative = Defaults.args.relative,
  offset_x = (vim.api.nvim_win_get_width(0) - 80) / 2,
  offset_y = 1,
  zindex = 49,
  external = false,
  focusable = true,
  noautocmd = true,
}

return M
