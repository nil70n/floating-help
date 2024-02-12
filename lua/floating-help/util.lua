local helper         = {}

helper.get_opts      = function(options)  -- Centralizing window in editor
  local opts = options.float_opts
  local window_height = (vim.opt.lines:get() - vim.opt.cmdheight:get()) * options.args.ratio

  opts.height = math.floor((vim.opt.lines:get() - vim.opt.cmdheight:get()) * options.args.ratio)
  opts.window_opts.offset_y = ((vim.opt.lines:get() - window_height) / 2) - vim.opt.cmdheight:get()
  opts.window_opts.offset_x = (vim.opt.columns:get() - opts.width) / 2

  return opts
end

helper.contains      = function(arr, val)
  for _, value in ipairs(arr) do
    if value == val then
      return true
    end
  end

  return false
end

local M              = {}

M.normalize          = function(key, value)
  if key == 'ratio' then -- 'ratio' must be between 0.5 and 1
    local val = value

    while val > 1 do
      val = val / 10
    end

    if key == 'ratio' and val < 0.5 then
      val = 0.5
    end

    return val
  end

  if key == 'border' then
    local styles = { 'none', 'single', 'double', 'rounded', 'solid', 'shadow' }

    if helper.contains(styles, value) then
      return value
    end

    return 'none'
  end

  return value
end

M.create_help_window = function(buf, options)
  local opts = helper.get_opts(options)
  local float_opts = vim.lsp.util.make_floating_popup_options(
    opts.width, opts.height, opts.window_opts)

  local new_win = vim.api.nvim_open_win(buf, true, float_opts)

  vim.api.nvim_win_set_height(new_win, opts.height)

  return new_win
end

return M
