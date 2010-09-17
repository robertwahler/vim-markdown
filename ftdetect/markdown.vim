autocmd BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn
      \ if &ft =~# '^\%(conf\|modula2\)$' |
      \   set ft=markdown |
      \ else |
      \   setf markdown |
      \ endif
" Text files with the second line H1 header "==============" 
autocmd BufNewFile,BufRead *.txt 
      \ if getline(2) =~ '^=*$'  |
      \   setfiletype markdown |
      \ endif
