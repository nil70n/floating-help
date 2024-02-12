local Functions = require('floating-help.functions')

M = {}

M.create_autocmd = function()
  local group = Functions.create_group()

  vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
    group = group,
    callback = function(args)
      Functions.open_help(args.buf)
    end
  })
end

return M
