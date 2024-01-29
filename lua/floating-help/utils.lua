local Defaults = require('floating-help.defaults')
local Options  = require('floating-help.options')

local M        = {}

M.set_spec     = function(opts)
  if type(opts) == 'table' then
    for key, value in pairs(opts) do
      if Options.float_opts[key] ~= nil and Defaults.args[key] ~= nil then
        Options.float_opts[key] = value
      end

      if Options.plugin[key] ~= nil then
        Options.plugin[key] = value
      end
    end
  end
end

M.is_help      = function(buf)
  return buf ~= nil and vim.bo[buf].filetype == 'help'
end

M.create_group = function()
  if vim.fn.exists('#' .. Defaults.vars.group_name) == 1 then
    vim.api.nvim_del_augroup_by_name(Defaults.vars.group_name)
  end

  return vim.api.nvim_create_augroup(Defaults.vars.group_name, { clear = true })
end

return M
