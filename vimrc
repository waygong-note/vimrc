" vundle (install) (do it first!!)
"" {{{
"" VundleVim/Vundle.vim: Vundle, the plug-in manager for Vim https://github.com/VundleVim/Vundle.vim
"" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"" }}}
" .vimrc management
" {{{
"" ln -s ~/.vimrc <your github/bitbucket local path>/.vimrc
" }}}

" autocomplete 
"" {{{
"" see section 'dictionary'
"" }}}
" dictionary 
abbr supe superuser
abbr autoc autocomplete
abbr que question
set dictionary+=~/dict.txt
"" {{{
"" Can I add a set of words to the Vim autocomplete vocabulary? - Super User https://superuser.com/questions/102343/can-i-add-a-set-of-words-to-the-vim-autocomplete-vocabulary
"" }}}
" encoding
set encoding=utf-8
" folding
"" {{{ 
"" VIM 編輯器顯示萬國碼（Unicode）文字，解決亂碼問題 - G. T. Wang https://blog.gtwang.org/tips/vim-working-with-unicode/ 
"" Vim 設定 foldmethod for PHP - Tsung's Blog https://blog.longwin.com.tw/2007/08/vim_foldmethod_php_2007/
"" 文档手册中心 - ChinaUnix.net技术文档手册中心 >> VIM: help >> VIM: fold http://man.chinaunix.net/newsoft/vi/doc/fold.html
"" vim folding @ 工作小錦囊 :: 隨意窩 Xuite日誌 http://blog.xuite.net/happyman/tips/24176311-vim+folding+
"" }}}
set foldmarker={{{,}}}
set foldmethod=marker
set foldlevel=0 " 預設全部關閉
" line number
set nu
" shell
"" {{{
"" Execute current line in bash from vim - Stack Overflow https://stackoverflow.com/questions/19883917/execute-current-line-in-bash-from-vim
"" nmap <F6> :exec '!'@"
"" nmap <F6> :exec '!'.getline(.)
"" }}}
" shortcut
"" {{{
"" open url by default browser Open URL under cursor in Vim with browser - Stack Overflow https://stackoverflow.com/questions/9458294/open-url-under-cursor-in-vim-with-browser
"" gx
"" }}}
" timestamp 
nmap <F3> i<C-R>=strftime("%F %a %T ")<CR>
imap <F3> <C-R>=strftime("%F %a %T ")<CR>
"" {{{
"" vi - Best way to insert timestamp in Vim? - Stack Overflow https://stackoverflow.com/questions/56052/best-way-to-insert-timestamp-in-vim/58604#58604
"" nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
"" }}}


" vundle (setting)
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" unite 
Plugin 'Shougo/unite.vim'
"" {{{
"" Shougo/unite.vim: Unite and create user interfaces https://github.com/Shougo/unite.vim
"" }}}
Plugin 'tpope/vim-fugitive'
" vimshell 
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
" vimwiki 
Plugin 'vimwiki/vimwiki'
let g:vimwiki_folding='syntax'
"" {{{
"" vimwiki/vimwiki: Personal Wiki for Vim https://github.com/vimwiki/vimwiki
"" folding - Vimwiki: can't fold list items - Vi and Vim Stack Exchange https://vi.stackexchange.com/questions/2370/vimwiki-cant-fold-list-items
"" }}}
call vundle#end()            " required
filetype plugin indent on    " required
