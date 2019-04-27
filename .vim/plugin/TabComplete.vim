function! Mosh_Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
				setlocal iskeyword+=:,.,-,(,),$,=,\,,',!,&,;
				return "\<C-N>"
    else
        return "\<Tab>"
endfunction
augroup TabAutoComplAutoCmd
	au!
	autocmd InsertLeave * setlocal iskeyword-=:,.,-,(,),$,=,\,,',!,&,;
	autocmd CursorMovedI * setlocal iskeyword-=:,.,-,(,),$,=,\,,',!,&,;
augroup END

inoremap <Tab> <C-R>=Mosh_Tab_Or_Complete()<CR>
