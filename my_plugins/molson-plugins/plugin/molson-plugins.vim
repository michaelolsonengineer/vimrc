
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Quick General Custom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! MySys()
  return "linux"
endfunc

func! GetMySourceRootPath()
  return "$HOME/code"
endfunc

func! Get_WorkSpace()
    execute 'cd '.g:cscoped_directory
endfunc


func! Get_Bovine()
    let l:workspace_directory="$HOME/svn/netcomm/svn_add_git_env_to_Bovine_build"
    execute 'cd '.l:workspace_directory
    call Rescope()
    let g:cscoped_directory=l:workspace_directory
endfunc

func! Get_Pentecost()
    let l:workspace_directory="$HOME/svn/netcomm/ntcsrsvn_tools_build_trunk"
    execute 'cd '.l:workspace_directory
    call Rescope()
    let g:cscoped_directory=l:workspace_directory
endfunc

func! Get_Titan()
    let l:workspace_directory="$HOME/svn/netcomm/ntcsrsvn_tools_build_trunk_2"
    execute 'cd '.l:workspace_directory
    call Rescope()
    let g:cscoped_directory=l:workspace_directory

endfunc

func! Get_Frankenstein()
    let l:workspace_directory="$HOME/svn/netcomm/pentecost_frankenstein_dev"
    execute 'cd '.l:workspace_directory
    call Rescope()
    let g:cscoped_directory=l:workspace_directory
endfunc

func! Get_Frankenstein()
    let l:workspace_directory="$HOME/svn/netcomm/pentecost_frankenstein_dev"
    execute 'cd '.l:workspace_directory
    call Rescope()
    let g:cscoped_directory=l:workspace_directory
endfunc

func! Get_Frankenstein1()
    let l:workspace_directory="$HOME/svn/netcomm/pentecost_frankenstein_dev_1"
    execute 'cd '.l:workspace_directory
    call Rescope()
    let g:cscoped_directory=l:workspace_directory
endfunc


command Gobovine call Get_Bovine()
command Gopentecost call Get_Pentecost()
command Gotitan call Get_Titan()
command Gofrankenstein call Get_Frankenstein()
command Gofrankenstein1 call Get_Frankenstein1()


map ;;[ :call Get_WorkSpace()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HexMode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ex command for toggling hex mode - define mapping if desired
command -bar Hexmode call ToggleHex()

" helper function to toggle hex mode
function ToggleHex()
  " hex mode should be considered a read-only operation
  " save values for modified and read-only for restoration later,
  " and clear the read-only flag for now
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides any textwidth, etc.
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    " restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only state
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction


" autocmds to automatically enter hex mode and handle file writes properly
if has("autocmd")
  " vim -b : edit binary using xxd-format!
  augroup Binary
    au!

    " set binary option for all binary files before reading them
    au BufReadPre *.bin,*.hex setlocal binary

    " if on a fresh read the buffer variable is already set, it's wrong
    au BufReadPost *
          \ if exists('b:editHex') && b:editHex |
          \   let b:editHex = 0 |
          \ endif

    " convert to hex on startup for binary files automatically
    au BufReadPost *
          \ if &binary | Hexmode | endif

    " When the text is freed, the next time the buffer is made active it will
    " re-read the text and thus not match the correct mode, we will need to
    " convert it again if the buffer is again loaded.
    au BufUnload *
          \ if getbufvar(expand("<afile>"), 'editHex') == 1 |
          \   call setbufvar(expand("<afile>"), 'editHex', 0) |
          \ endif

    " before writing a file when editing in hex mode, convert back to non-hex
    au BufWritePre *
          \ if exists("b:editHex") && b:editHex && &binary |
          \  let oldro=&ro | let &ro=0 |
          \  let oldma=&ma | let &ma=1 |
          \  silent exe "%!xxd -r" |
          \  let &ma=oldma | let &ro=oldro |
          \  unlet oldma | unlet oldro |
          \ endif

    " after writing a binary file, if we're in hex mode, restore hex mode
    au BufWritePost *
          \ if exists("b:editHex") && b:editHex && &binary |
          \  let oldro=&ro | let &ro=0 |
          \  let oldma=&ma | let &ma=1 |
          \  silent exe "%!xxd" |
          \  exe "set nomod" |
          \  let &ma=oldma | let &ro=oldro |
          \  unlet oldma | unlet oldro |
          \ endif
  augroup END
endif

"editing files in HEX mode (good for BLITs)
nnoremap <C-S-H> :Hexmode<CR>
inoremap <C-S-H> <Esc>:Hexmode<CR>
vnoremap <C-S-H> :<C-U>Hexmode<CR>


