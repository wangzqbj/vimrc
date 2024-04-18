"----------------------------------------------------------------------
" miscs
"----------------------------------------------------------------------
set scrolloff=2
set showmatch
set matchtime=3
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<

let g:netrw_browsex_viewer= "xdg-open"
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

runtime! ftplugin/man.vim
set keywordprg=:Man

nnoremap <Leader>hl :<c-u>call matchadd('Search', '\%'.line('.').'l')<cr>
nnoremap <Leader>chl :<c-u>call clearmatches()<cr>
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

if has('patch-8.2.4500')
	set wildoptions+=pum,fuzzy
	set wildmode=longest,full
endif

vnoremap <C-y> "+y
nnoremap <C-p> "+p

inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-f> <c-d>
cnoremap <c-d> <del>

"----------------------------------------------------------------------
" tab keymap
"----------------------------------------------------------------------
noremap <silent><Leader>to :tabonly<cr>
noremap <silent><Leader>tq :tabclose<cr>
noremap <silent><Leader>1 :tabn 1<cr>
noremap <silent><Leader>2 :tabn 2<cr>
noremap <silent><Leader>3 :tabn 3<cr>
noremap <silent><Leader>4 :tabn 4<cr>
noremap <silent><Leader>5 :tabn 5<cr>
noremap <silent><Leader>6 :tabn 6<cr>
noremap <silent><Leader>7 :tabn 7<cr>
noremap <silent><Leader>8 :tabn 8<cr>
noremap <silent><Leader>9 :tabn 9<cr>
noremap <silent><Leader>0 :tabn 10<cr>

" quit all
noremap <silent>Q :<c-u>confirm qall<cr>

function! RandomColorScheme()
	let mypicks = ['biogoo', 'dawn', 'github', 'newspaper']
	let mypick = mypicks[ str2nr(strftime("%y%m%d"))  % len(mypicks)]
	execute 'colo' mypick
endfunction

call RandomColorScheme()

let s:colors = ['biogoo', 'dawn', 'github', 'habiLight']
let s:colors += ['mayansmoke', 'newspaper', 'nuvola', 'oceanlight', 'peaksea', 'pyte', 'summerfruit256']

function! SwitchColor()
	call wzqlib#color_switch(s:colors)
endfunc

