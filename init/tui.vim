"改变insert模式下的光标
let &t_EI = "\e[2 q"
let &t_SI = "\e[6 q"
let &t_SR = "\e[4 q"

if $TERM == "xterm-kitty"
	let &t_ut=''
endif

set termguicolors
set bg=dark

if !empty($TMUX)
	" color
	set t_8f=[38;2;%lu;%lu;%lum
	set t_8b=[48;2;%lu;%lu;%lum

	" bracketed paste mode support for tmux
	if exists('&t_BE')
		let &t_BE = "\033[?2004h"
		let &t_BD = "\033[?2004l"
		" t_PS and t_PE are key code options and they are special
		exec "set t_PS=\033[200~"
		exec "set t_PE=\033[201~"
	endif
endif

"Enable Alt Key
set ttimeout
if $TMUX != ''
	set ttimeoutlen=35
elseif &ttimeoutlen > 80 || &ttimeoutlen <= 0
	set ttimeoutlen=85
endif
function! s:meta_code(key)
	exec "set <M-".a:key.">=\e".a:key
endfunc

for i in range(10)
	call s:meta_code(nr2char(char2nr('0') + i))
endfor
for i in range(26)
	call s:meta_code(nr2char(char2nr('a') + i))
endfor
for i in range(15) + range(16, 25)
	call s:meta_code(nr2char(char2nr('A') + i))
endfor
for c in [',', '.', '/', ';', '{', '}']
	call s:meta_code(c)
endfor
for c in ['?', ':', '-', '_', '+', '=', "'"]
	call s:meta_code(c)
endfor
function! s:key_escape(name, code)
	if get(g:, 'terminal_skip_key_init', 0) == 0
		exec "set ".a:name."=\e".a:code
	endif
endfunc
call s:key_escape('<F1>', 'OP')
call s:key_escape('<F2>', 'OQ')
call s:key_escape('<F3>', 'OR')
call s:key_escape('<F4>', 'OS')

