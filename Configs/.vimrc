filetype off
filetype plugin indent off
set nocompatible
set number
syntax on
set ai
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set wildmenu
set showmatch
runtime! macros/matchit.vim

augroup myfiletypes
        autocmd!
        autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
        autocmd FileType csharp set ai sw=4 sts=4 et
        autocmd FileType aspx set ai sw=4 sts=4
augroup END

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>e <Plug>(go-rename)



nmap <CR> o<Esc>
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_html_tidy_ignore_errors = ['proprietary attribute', 'not recognized', 'discarding unexpected', 'plain text isn''t allowed in <head> elements']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_check_on_wq=0
let g:PreserveNoEOL = 1
let g:tagbar_ctags_bin='/usr/local/bin/ctags'

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/ryan/.vim/bundle/neobundle.vim/
endif
