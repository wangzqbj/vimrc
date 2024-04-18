let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

exec 'so '.fnameescape(s:home).'/init.vim'
