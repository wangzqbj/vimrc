function! s:myLocalDb()
    let db = ZFVimIM_dbInit({
                \   'name' : 'myPinyinDB',
                \ })
    call ZFVimIM_cloudRegister({
                \   'mode' : 'local',
                \   'dbId' : db['dbId'],
                \   'repoPath' : '~/workspace/pinyindb',
                \   'dbFile' : '/pinyin.txt',
                \   'dbCountFile' : '/pinyin_count.txt',
                \ })
endfunction

let g:ZFVimIM_symbolMap = {
            \   ' ' : [''],
            \   '`' : ['·'],
            \   '!' : ['！'],
            \   '$' : ['￥'],
            \   '^' : ['……'],
            \   '-' : [''],
            \   '_' : ['——'],
            \   '(' : ['（'],
            \   ')' : ['）'],
            \   '[' : ['【'],
            \   ']' : ['】'],
            \   '<' : ['《'],
            \   '>' : ['》'],
            \   '\' : ['、'],
            \   '/' : ['、'],
            \   ';' : ['；'],
            \   ':' : ['：'],
            \   ',' : ['，'],
            \   '.' : ['。'],
            \   '?' : ['？'],
            \   "'" : ['‘', '’'],
            \   '"' : ['“', '”'],
            \   '0' : [''],
            \   '1' : [''],
            \   '2' : [''],
            \   '3' : [''],
            \   '4' : [''],
            \   '5' : [''],
            \   '6' : [''],
            \   '7' : [''],
            \   '8' : [''],
            \   '9' : [''],
            \ }

if exists('*ZFVimIME_initFlag') && ZFVimIME_initFlag()
    call s:myLocalDb()
else
    autocmd User ZFVimIM_event_OnDbInit call s:myLocalDb()
endif
