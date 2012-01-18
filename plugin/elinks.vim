" elinks.vim
" http://github.com/danchoi/elinks.vim

func! s:open_href(new_tab) 
  let pattern = 'https\?:[^ >)\]]\+'
  let line = search(pattern, 'cw')
  let href = matchstr(getline(line('.')), pattern)
  if a:new_tab
    let command = "elinks -remote 'openURL(\"".shellescape(href)."\", new-tab)'"
  else
    let command = "elinks -remote 'openURL(\"".shellescape(href)."\")'"
  endif
  call system(command)
  echom 'Opened in elinks: '.href
endfunc

func! s:print_latest_bookmarks(count)
  let command = "tail -".a:count." ~/.elinks/bookmarks |  awk -F '\\t' '{print $1 \"\\n\" $2 \"\\n\"}' "
  let res = system(command)
  put=res
endfunc

nnoremap <leader>o :call <SID>open_href(0)<CR>
nnoremap <leader>O :call <SID>open_href(1)<CR>
command! -count=1 EMarks call s:print_latest_bookmarks(<count>)

