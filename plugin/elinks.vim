" elinks.vim
" http://github.com/danchoi/elinks.vim


func! s:open_href() 
  let pattern = 'https\?:[^ >)\]]\+'
  let line = search(pattern, 'cw')
  let href = matchstr(getline(line('.')), pattern)
  let command = "elinks -remote 'openURL(\"".shellescape(href)."\")'"
  call system(command)
  echom 'Opened in elinks: '.href
endfunc

nnoremap <leader>o :call <SID>open_href()<CR>


