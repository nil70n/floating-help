local Options  = require('floating-help.options')

local get_opts = function()
  local opts = Options.float_opts
  local window_height = (vim.opt.lines:get() - vim.opt.cmdheight:get()) * Options.args.ratio

  opts.height = (vim.opt.lines:get() - vim.opt.cmdheight:get()) * Options.args.ratio
  opts.window_opts.offset_y = ((vim.opt.lines:get() - window_height) / 2) - vim.opt.cmdheight:get()
  opts.window_opts.offset_x = (vim.opt.columns:get() - opts.width) / 2

  return opts
end

local M        = {}

M.initialize   = function(opts)
  if type(opts) == 'table' then
    for key, value in pairs(opts) do
      if Options.args[key] ~= nil then
        Options.args[key] = value
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
    local float_opts = get_opts()
    local help_win = vim.api.nvim_get_current_win()
    local win_opts = vim.lsp.util.make_floating_popup_options(
      float_opts.width, float_opts.height, float_opts.window_opts)

    local new_win = vim.api.nvim_open_win(buf, true, win_opts)

    vim.api.nvim_win_set_height(new_win, float_opts.height)
    vim.wo[new_win].scroll = vim.wo[help_win].scroll

    vim.api.nvim_win_close(help_win, false)
  end
end

return M
