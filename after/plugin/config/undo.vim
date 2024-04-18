
let target_path = expand("/run/user/$UID/vimundo")

if !isdirectory(target_path)
	call mkdir(target_path, 'p', 0700)
endif

let &undodir = target_path
set undofile

nnoremap <F5> :UndotreeToggle<CR>
