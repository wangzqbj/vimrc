
let g:formatters_json = ['fixjson']

function! s:EnableAuFormat()
	augroup auto_format
		autocmd BufWrite <buffer> :Autoformat
	augroup END
	let b:au_auto_format = 1
endfunction

function! s:DisableAuFormat()
	autocmd! auto_format
	let b:au_auto_format = 0
endfunction

function! s:ToggleAuFormat()
	if get(b:, 'au_auto_format')
		call s:DisableAuFormat()
	else
		call s:EnableAuFormat()
	endif
endfunction

function! s:IsAutoFormatEnable()
	if get(b:, 'au_auto_format')
		echom "AutoFormat is enabled"
	else
		echom "AutoFormat is disabled"
	endif
endfunction

autocmd FileType cpp call s:EnableAuFormat()

nnoremap <Leader>af :<c-u>call <SID>ToggleAuFormat()<cr>
nnoremap <Leader>afs :<c-u>call <SID>IsAutoFormatEnable()<cr>
