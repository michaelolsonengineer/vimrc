" ============================================================================
" File:        nerdtree-extras.vim
" Description: plugin for NERD Tree that provides an execute menu item, that
"              executes system default application for file or directory
" ============================================================================
if exists("g:loaded_nerdtree_shell_exec_menuitem")
  finish
endif

let g:loaded_nerdtree_shell_exec_menuitem = 1
let s:hasKdeinit = system("ps -e") =~ 'kdeinit'
let s:hasDarwin = system("uname -s") =~ 'Darwin'
let s:hasMint = system("lsb_release -a") =~ 'Mint'
let s:hasUbuntu = system("lsb_release -a") =~ 'Ubuntu'

call NERDTreeAddMenuItem({
      \ 'text': 'e(x)plorer',
      \ 'shortcut': 'x',
      \ 'callback': 'NERDTreeSystemExplorer' })

" this is credited to https://github.com/ivalkeen/nerdtree-execute/blob/master/nerdtree_plugin/execute_menuitem.vim
function! NERDTreeSystemExplorer()
  let l:oldssl=&shellslash
  set noshellslash
  let treenode = g:NERDTreeFileNode.GetSelected()
  let path = treenode.path.str()

  if has("gui_running")
    let args = shellescape(path,1)." &"
  else
    let args = shellescape(path,1)." > /dev/null"
  end

  if has("unix") && executable("gnome-open") && !s:hasKdeinit
    exe "silent !gnome-open ".args
    let ret= v:shell_error
  elseif has("unix") && executable("kde-open") && s:hasKdeinit
    exe "silent !kde-open ".args
    let ret= v:shell_error
  elseif has("unix") && executable("open") && s:hasDarwin
    exe "silent !open ".args
    let ret= v:shell_error
  elseif has("win32") || has("win64")
    exe "silent !start explorer ".shellescape(path,1)
  end
  let &shellslash=l:oldssl
  redraw!
endfunction


