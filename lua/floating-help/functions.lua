local Util     = require('floating-help.util')
local Options  = require('floating-help.options')

local M        = {}

M.initialize   = function(opts)
  if type(opts) == 'table' then
    for key, value in pairs(opts) do
      if Options.args[key] ~= nil then
        Options.args[key] = Util.normalize(key, value)
      end

      if Options.float_opts.window_opts[key] ~= nil then
        Options.float_opts.window_opts[key] = Util.normalize(key, value)
      end
    end
  end
end

M.create_group = function()
  if vim.fn.exists('#' .. Options.vars.group_name) == 1 then
    vim.api.nvim_del_augroup_by_name(Options.vars.group_name)
  end

  return vim.api.nvim_create_augroup(Options.vars.group_name, { clear = true })
end

M.open_help    = function(buf)
  if buf ~= nil and vim.bo[buf].filetype == 'help' then
    local current_help_win = vim.api.nvim_get_current_win()
    local help_win = Util.create_help_window(buf, Options)

    -- Set help scroll position
    vim.wo[help_win].scroll = vim.wo[current_help_win].scroll

    -- Close common help window
    vim.api.nvim_win_close(current_help_win, false)
  end
end

return M
