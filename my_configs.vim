"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install
"       https://github.com/michaelolsonengineer/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set font according to system
if has("mac") || has("macunix")
    set gfn=Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=Hack:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
    set gfn=Hack\ 10,Source\ Code\ Pro\ 10,Bitstream\ Vera\ Sans\ Mono\ 10
elseif has("linux")
    set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 11
endif

" Colorscheme
colorscheme wombat
if has("gui_running")
  set guioptions-=T
  set t_Co=256       " set number of colors
  set background=dark
  colorscheme wombat
  hi clear ColorColumn
else
  set background=dark
  colorscheme peaksea
  hi clear ColorColumn
endif

set ttyfast                 " faster redrawing
set nolazyredraw            " don't redraw while executing macros

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cscope / Ctags / Path / Dictionary / Thesaurus
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" add possible vim ctags database locations and search recursively back for existing one
"cd %:p:h change to current directory of open file
set tags=$HOME/current/tags
set tags+=./tags;
set dictionary+=/usr/share/dict/words
set dictionary+=$HOME/code/tags

" add possible vim cscope database locations
cs add $HOME/current/cscope.out $HOME/code

" <C-]> is for ctags finding definition
":ts or :tselect shows the list
":tn or :tnext goes to the next tag in that list
":tp or :tprev goes to the previous tag in that list
":tf or :tfirst goes to the first tag of the list
":tl or :tlast goes to the last tag of the list

" 0 or s: Find this C symbol " maybe more than one
nmap ;;s :cs find s <C-R>=expand("<cword>")<CR>
" 1 or g: Find this definition
nmap ;;g :cs find g <C-R>=expand("<cword>")<CR>
" 2 or d: Find functions called by this function
nmap ;;d :cs find d <C-R>=expand("<cword>")<CR>
" 3 or c: Find functions calling this function
nmap ;;c :cs find c <C-R>=expand("<cword>")<CR>
" 4 or t: Find this text string
nmap ;;t :cs find t <C-R>=expand("<cword>")<CR>
" 6 or e: Find this egrep pattern
nmap ;;e :cs find e <C-R>=expand("<cword>")<CR>
" 7 or f: Find this file
nmap ;;f :cs find f <C-R>=expand("<cfile>")<CR>
" 8 or i: Find files #including this file
nmap ;;i :cs find i ^<C-R>=expand("<cfile>")<CR>$

"set cscopetag

function Rescope()
    cs kill 0
    cs add htags/cscope.out
    set tags+=tags
endfunction

map <leader>r :call Rescope()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Windows Convenient Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Standard Shortcut to paste selection in insert and normal mode
nmap <C-V> "+gp
imap <C-V> <ESC><C-V>a
vmap <C-V> x"+gPv
cmap <C-V> <C-R>+

" Standard Shortcut to copy selection in insert and normal mode
nmap <C-C> "+y
vmap <C-C> "+y

" Standard Shortcut to cut selection in visual mode
vnoremap <C-X> "+x

" Standard Shortcut to undo files changes in insert and normal mode
nmap <C-Z> u
imap <C-Z> <ESC><C-Z>a
vmap <C-Z> <ESC><C-Z>v

" Standard Shortcut to redo file changes
map <C-Y> <C-R>

" Standard Shortcut to save files in insert and normal mode
nmap <C-S> :w!<CR>
imap <C-S> <ESC>:w!<CR>a
vmap <C-S> <ESC>:w!<CR>v

nmap <leader><leader>a ggVG
vmap <leader><leader>a <ESC>ggVGv

set pastetoggle=<leader>v

noremap <Leader>y "*y
noremap <Leader>v "*p
noremap <Leader>Y "+y
noremap <Leader>V "+p

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  Commenting blocks of code
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType c,cpp,java,scala          let b:comment_leader = '// '
autocmd FileType dts                       let b:comment_leader = '// '
autocmd FileType sh,ruby,python            let b:comment_leader = '# '
autocmd FileType conf,fstab                let b:comment_leader = '# '
autocmd FileType tex                       let b:comment_leader = '% '
autocmd FileType mail                      let b:comment_leader = '> '
autocmd FileType vim                       let b:comment_leader = '" '
" noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
" noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Alternative using Tab/Shift-Tab for shifting text (for gvim).
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

noremap <S-left> :bprev<CR>
noremap <S-right> :bnext<CR>

nnoremap <Leader>l :ls<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>gs :Gstatus<cr>
nmap <leader>ge :Gedit<cr>
nmap <silent><leader>gr :Gread<cr>
nmap <silent><leader>gb :Gblame<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shell=$SHELL
"used by ctx as the update variable
set updatetime=1000
" remember more commands and search history
set history=1000
" use many muchos levels of undo
set undolevels=1000

"Setup Whitespace characters to be viewed
set listchars=eol:¶,tab:>-,trail:~,extends:>,precedes:<
set list

" Try the following if your GUI uses a dark background.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" Show trailing whitespace:
match ExtraWhitespace /\s\+$/
" Any :match highlighting applies only to the current window. With the following in your vimrc, the command will be
" applied to the first window, and to any subsequent windows. The pattern * applies the highlight to all files.
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" If you use this alternate pattern, you may want to consider using the following autocmd to let the
" highlighting show up as soon as you leave insert mode after entering trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
"autocmd BufWrite *.py :call DeleteTrailingWS()

let java_space_errors = 1
let c_no_trail_space_error = 1
let c_no_tab_space_error = 1

<<<<<<< HEAD
" markdown to html
nmap <leader>md :%!markdown --html4tags <cr>

" remove extra whitespace
nmap <leader><space> :%s/\s\+$<cr>

" search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" error bells
set noerrorbells
set visualbell

augroup myvimrc
    au!
    autocmd BufWritePost .vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

function! GetFiletypes()
    " Get a list of all the runtime directories by taking the value of that
    " option and splitting it using a comma as the separator.
    let rtps = split(&runtimepath, ",")
    " This will be the list of filetypes that the function returns
    let filetypes = []

    " Loop through each individual item in the list of runtime paths
    for rtp in rtps
        let syntax_dir = rtp . "/syntax"
        " Check to see if there is a syntax directory in this runtimepath.
        if (isdirectory(syntax_dir))
            " Loop through each vimscript file in the syntax directory
            for syntax_file in split(glob(syntax_dir . "/*.vim"), "\n")
                " Add this file to the filetypes list with its everything
                " except its name removed.
                call add(filetypes, fnamemodify(syntax_file, ":t:r"))
            endfor
        endif
    endfor

    " This removes any duplicates and returns the resulting list.
    " NOTE: This might not be the best way to do this, suggestions are welcome.
    return uniq(sort(filetypes))
endfunction

autocmd BufNewFile,BufRead *.symlink   set syntax=sh
=======
>>>>>>> f0e045e4bdcb186dec76cb95303dda78a1942550
