" Title:        Floating Help
" Description:  Open :help in a floating window.
" Last Change:  29 January 2024
" Maintainer:   Nilton Nascimento <https://github.com/nil70n>

" Prevents the plugin from being loaded multiple times.
if exists("g:loaded_floating_help")
    finish
endif
let g:loaded_floating_help = 1

" Creates the autocmd with default config with no need to run setup()
lua require('floating-help.core').create_autocmd()

" Reference:
" https://www.linode.com/docs/guides/write-a-neovim-plugin-with-lua/
