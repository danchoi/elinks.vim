" elinks.vim
" http://github.com/danchoi/elinks.vim

let s:pattern = 'https\?:[^ >)\]]\+'

func! s:open_href(new_tab) 
  let line = search(s:pattern, 'cw')
  let href = matchstr(getline(line('.')), s:pattern)
  if a:new_tab
    let command = "elinks -remote 'openURL(\"".href."\", new-tab)'"
  else
    let command = "elinks -remote 'openURL(\"".href."\")'"
  endif
  call system(command)
  echom 'Opened link in elinks'
endfunc

func! s:jump_to_href(up) 
  let direction_flag = a:up ? 'b' : '' 
  call search(s:pattern, direction_flag)
endfunc

func! s:print_latest_bookmarks(count)
  let command = "tail -".a:count." ~/.elinks/bookmarks |  awk -F '\\t' '{print $1 \"\\n\" $2 \"\\n\"}' "
  let res = system(command)
  put=res
endfunc

func! s:print_latest_history(count)
  let command = "tail -".a:count." ~/.elinks/globhist |  awk -F '\\t' '{print $1 \"\\n\" $2 \"\\n\"}' "
  let res = system(command)
  put=res
endfunc


nnoremap <leader>o :call <SID>open_href(0)<CR>
nnoremap <leader>O :call <SID>open_href(1)<CR>
nnoremap <C-j> :call <SID>jump_to_href(0)<CR>
nnoremap <C-k> :call <SID>jump_to_href(1)<CR>
command! -count=1 LMarks call s:print_latest_bookmarks(<count>)
command! -count=1 LHist call s:print_latest_history(<count>)

