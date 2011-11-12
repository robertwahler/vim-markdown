autocmd BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn
      \ if &ft =~# '^\%(conf\|modula2\)$' |
      \   set ft=markdown |
      \ else |
      \   setf markdown |
      \ endif
" Text files with the second line H1 header "==============" on filetypes that are not set
autocmd BufNewFile,BufRead *
      \ if &ft  == '' |
        \ if getline(1) =~ '^# \+'  |
        \   setfiletype markdown |
        \ elseif getline(2) =~ '^=\+$'  |
        \   setfiletype markdown |
        \ endif |
      \ endif
