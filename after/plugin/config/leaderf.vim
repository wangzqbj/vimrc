"----------------------------------------------------------------------
" LeaderF
"----------------------------------------------------------------------
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_HideHelp = 1

let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.cache'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
			\ }

let g:Lf_MruFileExclude = ['*.so', '*.exe', '*.py[co]', '*.sw?', '~$*', '*.bak', '*.tmp', '*.dll']
let g:Lf_MruMaxFiles = 2048
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PopupColorscheme = 'default'
let g:Lf_PopupColorscheme = 'gruvbox_default'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

let g:Lf_NormalMap = {
        \ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
		\ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<cr>']],
		\ "Mru": [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<cr>']],
		\ "Tag": [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<cr>']],
		\ "BufTag": [["<ESC>", ':exec g:Lf_py "bufTagExplManager.quit()"<cr>']],
		\ "Function": [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<cr>']],
		\ }


let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1

let g:Lf_GtagsAutoGenerate = 1
let g:Lf_GtagsAutoUpdate = 1
let g:Lf_Gtagslabel = 'native-pygments'
let g:Lf_GtagsSource = 2

"----------------------------------------------------------------------
" filer
"----------------------------------------------------------------------
let g:Lf_FilerShowPromptPath = 1
let g:Lf_FilerInsertMap = {'<CR>': 'open_current',
	\ '<BS>': 'open_parent_or_backspace', '<up>': 'up', '<down>': 'down'}
let g:Lf_FilerNormalMap = {'i': 'switch_insert_mode', '<esc>': 'quit', 
	\ '~': 'goto_root_marker_dir', 'M': 'mkdir', 'T': 'create_file' }

"----------------------------------------------------------------------
" keymap
"----------------------------------------------------------------------
nnoremap <Leader>ff :<c-u>Leaderf file<cr>
nnoremap <Leader>fe :<c-u>Leaderf filer<cr>
nnoremap <Leader>fn :<c-u>Leaderf function<cr>
nnoremap <Leader>ft :<c-u>Leaderf gtags --update<cr>
nnoremap <Leader>fr :<c-u>Leaderf rg --cword<cr>
nnoremap <Leader>fc :<c-u>Leaderf --recall<cr>
nnoremap <Leader>gr :<c-u><c-r>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<cr><cr>
nnoremap <Leader>gd :<c-u><c-r>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<cr><cr>
nnoremap <Leader>gg :<c-u>Leaderf gtags --by-context --auto-jump<cr>

inoremap <c-x><c-x> <c-\><c-o>:Leaderf snippet<cr>
