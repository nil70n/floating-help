local Utils = require('floating-help.utils')
local Options = require('floating-help.options')

M = {}

M.open_floating_help = function(buf)
  if Utils.is_help(buf) then
    local help_win = vim.api.nvim_get_current_win()
    local new_win = vim.api.nvim_open_win(
      buf,
      true,
      vim.lsp.util.make_floating_popup_options(
        78, 40, Options.float_opts)
    )

    vim.api.nvim_win_set_height(new_win, 40)
    vim.wo[new_win].scroll = vim.wo[help_win].scroll
    vim.api.nvim_win_close(help_win, false)
  end
end

M.open_help = function(args)
  if Options.plugin.mode == 'float' then
    M.open_floating_help(args.buf)
  end
end

M.create_autocmd = function()
  local group = Utils.create_group()

  vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
    group = group,
    callback = M.open_help
  })
end

return M
