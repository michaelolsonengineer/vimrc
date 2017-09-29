![VIM](https://dnp4pehkvoo6n.cloudfront.net/43c5af597bd5c1a64eb1829f011c208f/as/Ultimate%20Vimrc.svg)

# The Ultimate vimrc

Over the last 10 years, I have used and tweaked Vim. This configuration is the ultimate vimrc (or at least my version of it).

There are two versions:

* **The Basic**: If you want something small just copy [basic.vim](https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim) into your ~/.vimrc and you will have a good basic setup
* **The Awesome**: Includes a ton of useful plugins, color schemes, and configurations

I would, of course, recommend using the awesome version.

## How to install the Awesome version?
The awesome version includes a lot of great plugins, configurations and color schemes that make Vim a lot better. To install it simply do following from your terminal:

	git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh

I also recommend using [the Hack font](http://sourcefoundry.org/hack/) (it's a free and awesome font designed for source code). The Awesome vimrc is already setup to try to use it.

## How to install the Basic version?
The basic version is just one file and no plugins. Just copy [basic.vim](https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim) and paste it into your vimrc.

The basic version is useful to install on remote servers where you don't need many plugins, and you don't do many edits.

	git clone --depth=1 git://github.com/amix/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_basic_vimrc.sh


## How to install on Windows?

Use [msysgit](http://msysgit.github.com/) to checkout the repository and run the installation instructions above. No special instructions needed ;-)


## How to install on Linux

If you have vim aliased as `vi` instead of `vim`, make sure to either alias it: `alias vi=vim`. Otherwise, `apt-get install vim`

## How to update to latest version?

Just do a git rebase!

    cd ~/.vim_runtime
    git pull --rebase


## Some screenshots

Colors when editing a Python file:

![Screenshot 1](https://dnp4pehkvoo6n.cloudfront.net/07583008e4da885801657e8781777844/as/Python%20editing.png)

Opening recently opened files with the [mru.vim](https://github.com/vim-scripts/mru.vim) plugin:

![Screenshot 2](https://dnp4pehkvoo6n.cloudfront.net/1d49a88f9bd5d013c025bb1e1272a7d8/as/MRU%20plugin.png)

[NERD Tree](https://github.com/scrooloose/nerdtree) plugin in a terminal window:
![Screenshot 3](https://dnp4pehkvoo6n.cloudfront.net/ae719203166585d64728f28398f4b1b7/as/Terminal%20usage.png)

Distraction free mode using [goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2):
![Screenshot 4](https://dnp4pehkvoo6n.cloudfront.net/f0dcc4c9739148c56cbf8285a910ac41/as/Zen%20mode.png)


## Included Plugins

I recommend reading the docs of these plugins to understand them better. Each plugin provides a much better Vim experience!

* [ack.vim](https://github.com/mileszs/ack.vim): Vim plugin for `the_silver_searcher` (ag) or ack -- a wicked fast grep
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Quickly and easily switch between buffers. This plugin can be opened with `<leader+o>`
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file, buffer, mru and tag finder. It's mapped to `<Ctrl+F>`
* [goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2): 
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline for Vim
* [NERD Tree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim
* [mru.vim](https://github.com/vim-scripts/mru.vim): Plugin to manage Most Recently Used (MRU) files. This plugin can be opened with `<leader+f>`
* [open_file_under_cursor.vim](https://github.com/amix/open_file_under_cursor.vim): Open file under cursor when pressing `gf`
* [pathogen.vim](https://github.com/tpope/vim-pathogen): Manage your vim runtimepath 
* [snipmate.vim](https://github.com/garbas/vim-snipmate): snipmate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim
* [syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim
* [vim-commentary](https://github.com/tpope/vim-commentary): Comment stuff out.  Use `gcc` to comment out a line (takes a count), `gc` to comment out the target of a motion. `gcu` uncomments a set of adjacent commented lines.
* [vim-expand-region](https://github.com/terryma/vim-expand-region): Allows you to visually select increasingly larger regions of text using the same key combination
* [vim-fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper so awesome, it should be illegal
* [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object): Defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors): Sublime Text style multiple selections for Vim, CTRL+N is remapped to CTRL+S (due to YankRing)
* [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack): Maintains a history of previous yanks, changes and deletes
Remove all clutter and focus only on the essential. Similar to iA Writer or Write Room [Read more here](http://amix.dk/blog/post/19744)


## Included color schemes

* [peaksea](https://github.com/vim-scripts/peaksea): The default
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-irblack](https://github.com/wgibbs/vim-irblack)
* [mayansmoke](https://github.com/vim-scripts/mayansmoke)
* [vim-pyte](https://github.com/therubymug/vim-pyte)


## Included modes

* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
* [vim-less](https://github.com/groenewege/vim-less)
* [vim-bundle-mako](https://github.com/sophacles/vim-bundle-mako)
* [vim-markdown](https://github.com/tpope/vim-markdown)
* [nginx.vim](https://github.com/vim-scripts/nginx.vim): Highlights configuration files for nginx
* [vim-go](https://github.com/fatih/vim-go)


## How to include your own stuff?

After you have installed the setup, you can create **~/.vim_runtime/my_configs.vim** to fill in any configurations that are important for you. For instance, my **my_configs.vim** looks like this:

	~/.vim_runtime (master)> cat my_configs.vim
	map <leader>ct :cd ~/Desktop/Todoist/todoist<cr>
	map <leader>cw :cd ~/Desktop/Wedoist/wedoist<cr> 

You can also install your plugins, for instance, via pathogen you can install [vim-rails](https://github.com/tpope/vim-rails):

	cd ~/.vim_runtime
	git clone git://github.com/tpope/vim-rails.git sources_non_forked/vim-rails


## Key Mappings

The [leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) is `,`, so whenever you see `<leader>` it means `,`.


### Plugin related mappings

Open [bufexplorer](https://github.com/vim-scripts/bufexplorer.zip) to see and manage the current buffers (`<leader>o`):
    
    map <leader>o :BufExplorer<cr>

Open [MRU.vim](https://github.com/vim-scripts/mru.vim) to see the recently open files (`<leader>f`):

    map <leader>f :MRU<CR>

Open [ctrlp.vim](https://github.com/kien/ctrlp.vim) plugin to quickly find a file or a buffer (`<leader>j` or `<ctrl>f`):
    
    let g:ctrlp_map = '<c-f>'

[NERD Tree](https://github.com/scrooloose/nerdtree) mappings:

    map <leader>nn :NERDTreeToggle<cr>
    map <leader>nb :NERDTreeFromBookmark 
    map <leader>nf :NERDTreeFind<cr>

[goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2) lets you only focus on one thing at a time. It removes all the distractions and centers the content. It has a special look when editing Markdown, reStructuredText and textfiles. It only has one mapping. (`<leader>z`)

    map <leader>z :Goyo<cr>


### Normal mode mappings

Fast saving of a buffer (`<leader>w`):

	nmap <leader>w :w!<cr>
	
Map `<Space>` to `/` (search) and `<Ctrl>+<Space>` to `?` (backwards search):
	
	map <space> /
	map <c-space> ?
	map <silent> <leader><cr> :noh<cr>

Disable highlights when you press `<leader><cr>`:
	
	map <silent> <leader><cr> :noh<cr>

Smart way to move between windows (`<ctrl>j` etc.):
	
	map <C-j> <C-W>j
	map <C-k> <C-W>k
	map <C-h> <C-W>h
	map <C-l> <C-W>l

Closing of the current buffer(s) (`<leader>bd` and (`<leader>ba`)):
	
	" Close current buffer
	map <leader>bd :Bclose<cr>
	
	" Close all buffers
	map <leader>ba :1,1000 bd!<cr>
	
Useful mappings for managing tabs:
	
	map <leader>tn :tabnew<cr>
	map <leader>to :tabonly<cr>
	map <leader>tc :tabclose<cr>
	map <leader>tm :tabmove 
	
	" Opens a new tab with the current buffer's path
	" Super useful when editing files in the same directory
	map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
	
Switch [CWD](http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file) to the directory of the open buffer:
	
	map <leader>cd :cd %:p:h<cr>:pwd<cr>
	
Open `ack.vim` for fast search:
	
	map <leader>g :Ack 

Quickly open a buffer for scripbble:
	
	map <leader>q :e ~/buffer<cr>

Toggle paste mode on and off:
	
	map <leader>pp :setlocal paste!<cr>


### Visual mode mappings

Visual mode pressing `*` or `#` searches for the current selection:

	vnoremap <silent> * :call VisualSelection('f')<CR>
	vnoremap <silent> # :call VisualSelection('b')<CR>

When you press gv you `Ack.vim` after the selected text:

	vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

When you press `<leader>r` you can search and replace the selected text:

	vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

Surround the visual selection in parenthesis/brackets/etc.:

    vnoremap $1 <esc>`>a)<esc>`<i(<esc>
    vnoremap $2 <esc>`>a]<esc>`<i[<esc>
    vnoremap $3 <esc>`>a}<esc>`<i{<esc>
    vnoremap $$ <esc>`>a"<esc>`<i"<esc>
    vnoremap $q <esc>`>a'<esc>`<i'<esc>
    vnoremap $e <esc>`>a"<esc>`<i"<esc>


### Insert mode mappings

Quickly insert parenthesis/brackets/etc.:

    inoremap $1 ()<esc>i
    inoremap $2 []<esc>i
    inoremap $3 {}<esc>i
    inoremap $4 {<esc>o}<esc>O
    inoremap $q ''<esc>i
    inoremap $e ""<esc>i
    inoremap $t <><esc>i

Insert the current date and time (useful for timestamps):

    iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


### Command line mappings

$q is super useful when browsing on the command line. It deletes everything until the last slash:

    cno $q <C-\>eDeleteTillSlash()<cr>

Bash like keys for the command line:

    cnoremap <C-A>		<Home>
    cnoremap <C-E>		<End>
    cnoremap <C-K>		<C-U>

    cnoremap <C-P> <Up>
    cnoremap <C-N> <Down>

Write the file as sudo (works only on Unix). Super useful when you open a file and you don't have permissions to save your changes. [Vim tip](http://vim.wikia.com/wiki/Su-write):

    :W 


### Spell checking
Pressing `<leader>ss` will toggle spell checking:

    map <leader>ss :setlocal spell!<cr>

Shortcuts using `<leader>` instead of special characters:

    map <leader>sn ]s
    map <leader>sp [s
    map <leader>sa zg
    map <leader>s? z=


### Cope
Query `:help cope` if you are unsure what cope is. It's super useful!

When you search with `Ack.vim`, display your results in cope by doing:
`<leader>cc`

To go to the next search result do:
`<leader>n`

To go to the previous search results do:
`<leader>p`

Cope mappings:

    map <leader>cc :botright cope<cr>
    map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
    map <leader>n :cn<cr>
    map <leader>p :cp<cr>


## How to uninstall
Just do following:
* Remove `~/.vim_runtime`
* Remove any lines that reference `.vim_runtime` in your `~/.vimrc`

## Vim Map
v  <C-A>         <Esc><C-A>v
n  <C-A>         ggVG
   <C-B>         :CtrlPBuffer<CR>
v  <C-C>         "+y
n  <C-C>         "+y
   <C-F>         <Plug>(ctrlp)
v  <C-H>       * :<C-U>Hexmode<CR>
n  <C-H>       * :Hexmode<CR>
o  <C-H>         <C-W>h
v  <Tab>       * >gv
s  <NL>        * <Esc>i<Right><C-R>=snipMate#TriggerSnippet()<CR>
nox<NL>          <C-W>j
   <C-K>         <C-W>k
   <C-L>         <C-W>l
n  <C-N>         <Plug>yankstack_substitute_newer_paste
n  <C-P>         <Plug>yankstack_substitute_older_paste
x  <C-S>       * :<C-U>call multiple_cursors#new("v", 0)<CR>
s  <C-S>         <Esc>:w!<CR>v
n  <C-S>       * :call multiple_cursors#new("n", 1)<CR>
v  <C-V>         x"+gPv
n  <C-V>         "+gp
n  <C-W><C-F>  * :call GotoFile("new")<CR>
n  <C-W>f      * :call GotoFile("new")<CR>
v  <C-X>       * "+x
   <C-Y>         <C-R>
v  <C-Z>         <Esc><C-Z>v
n  <C-Z>         u
   <Space>       /
v  #           * :<C-U>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
v  $e          * <Esc>`>a"<Esc>`<i"<Esc>
v  $q          * <Esc>`>a'<Esc>`<i'<Esc>
v  $$          * <Esc>`>a"<Esc>`<i"<Esc>
v  $3          * <Esc>`>a}<Esc>`<i{<Esc>
v  $2          * <Esc>`>a]<Esc>`<i[<Esc>
v  $1          * <Esc>`>a)<Esc>`<i(<Esc>
v  *           * :<C-U>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
v  +             <Plug>(expand_region_expand)
n  +             <Plug>(expand_region_expand)
n  ,hp           <Plug>GitGutterPreviewHunk
n  ,hr           <Plug>GitGutterUndoHunk:echomsg ',hr is deprecated. Use ,hu'<CR>
n  ,hu           <Plug>GitGutterUndoHunk
n  ,hs           <Plug>GitGutterStageHunk
n  ,bv         & :BufExplorerVerticalSplit<CR>
n  ,bs         & :BufExplorerHorizontalSplit<CR>
n  ,be         & :BufExplorer<CR>
n  ,l          * :ls<CR>
   ,p            :cp<CR>
   ,n            :cn<CR>
   ,co           ggVGy:tabnew<CR>:set syntax=qf<CR>pgg
   ,cc           :botright cope<CR>
   ,r            :call Rescope()<CR>
   ,g            :Ack<Space>
   ,e            :e! ~/.vim_runtime/my_configs.vim<CR>
n  ,d          * :GitGutterToggle<CR>
n  ,c          * :call SyntasticCheckCoffeescript()<CR>
n  ,z          * :Goyo<CR>
   ,nf           :NERDTreeFind<CR>
   ,nb           :NERDTreeFromBookmark<Space>
   ,nn           :NERDTreeToggle<CR>
   ,j            :CtrlP<CR>
   ,f            :MRU<CR>
   ,o            :BufExplorer<CR>
   ,pp           :setlocal paste!<CR>
   ,x            :e ~/buffer.md<CR>
   ,q            :e ~/buffer<CR>
   ,m          * mmHmt:%s/<C-V><CR>//ge<CR>'tzt'm
   ,s?           z=
   ,sa           zg
   ,sp           [s
   ,sn           ]s
   ,ss           :setlocal spell!<CR>
   ,cd           :cd %:p:h<CR>:pwd<CR>
   ,te           :tabedit <C-R>=expand("%:p:h")<CR>/
n  ,tl           :exe "tabn ".g:lasttab<CR>
   ,t,           :tabnext<Space>
   ,tm           :tabmove<Space>
   ,tc           :tabclose<CR>
   ,to           :tabonly<CR>
   ,tn           :tabnew<CR>
   ,h            :bprevious<CR>
ov ,l            :bnext<CR>
   ,ba           :bufdo bd<CR>
   ,bd           :Bclose<CR>:tabclose<CR>gT
   ,<CR>         :noh<CR>
n  ,w            :w!<CR>
s  0             <SNR>99_yank_with_key("0")
nox0             ^
s  1             <SNR>99_yank_with_key("1")
s  2             <SNR>99_yank_with_key("2")
s  3             <SNR>99_yank_with_key("3")
s  4             <SNR>99_yank_with_key("4")
s  5             <SNR>99_yank_with_key("5")
s  6             <SNR>99_yank_with_key("6")
s  7             <SNR>99_yank_with_key("7")
s  8             <SNR>99_yank_with_key("8")
s  9             <SNR>99_yank_with_key("9")
   ;;[           :call Get_WorkSpace()<CR>
n  ;;i           :cs find i ^<C-R>=expand("<cfile>")<CR>$
n  ;;f           :cs find f <C-R>=expand("<cfile>")<CR>
n  ;;e           :cs find e <C-R>=expand("<cword>")<CR>
n  ;;t           :cs find t <C-R>=expand("<cword>")<CR>
n  ;;c           :cs find c <C-R>=expand("<cword>")<CR>
n  ;;d           :cs find d <C-R>=expand("<cword>")<CR>
n  ;;g           :cs find g <C-R>=expand("<cword>")<CR>
n  ;;s           :cs find s <C-R>=expand("<cword>")<CR>
x  P           * :<C-U>call <SNR>99_paste_with_key("P", "v", v:register, v:count1)<CR>
n  P           * :<C-U>call <SNR>99_paste_with_key("P", "n", v:register, v:count1)<CR>
x  S             <Plug>VSurround
v  Si            S(i_<Esc>f)
n  [c            <Plug>GitGutterPrevHunk
   \c            <Plug>toggle
n  ]c            <Plug>GitGutterNextHunk
s  _             <SNR>99_yank_with_key("_")
n  _             <Plug>(expand_region_shrink)
x  _             <Plug>(expand_region_shrink)
s  a             <SNR>99_yank_with_key("a")
v  aI          * :<C-U>cal <SNR>92_HandleTextObjectMapping(0, 1, 1, [line("'<"), line("'>"), col("'<"), col("'>")])<CR><Esc>gv
o  aI          * :<C-U>cal <SNR>92_HandleTextObjectMapping(0, 1, 0, [line("."), line("."), col("."), col(".")])<CR>
v  ai          * :<C-U>cal <SNR>92_HandleTextObjectMapping(0, 0, 1, [line("'<"), line("'>"), col("'<"), col("'>")])<CR><Esc>gv
o  ai          * :<C-U>cal <SNR>92_HandleTextObjectMapping(0, 0, 0, [line("."), line("."), col("."), col(".")])<CR>
x  ac            <Plug>GitGutterTextObjectOuterVisual
o  ac            <Plug>GitGutterTextObjectOuterPending
s  b             <SNR>99_yank_with_key("b")
s  c             <SNR>99_yank_with_key("c")
n  cS            <Plug>CSurround
n  cs            <Plug>Csurround
n  cgc           <Plug>ChangeCommentary
n  cr            <Plug>Coerce
s  d             <SNR>99_yank_with_key("d")
x  d           * <SNR>99_yank_with_key("d")
n  d           * <SNR>99_yank_with_key("d")
n  ds            <Plug>Dsurround
s  e             <SNR>99_yank_with_key("e")
s  f             <SNR>99_yank_with_key("f")
v  gx            <Plug>NetrwBrowseXVis
n  gx            <Plug>NetrwBrowseX
s  g             <SNR>99_yank_with_key("g")
x  gP          * :<C-U>call <SNR>99_paste_with_key("gP", "v", v:register, v:count1)<CR>
n  gP          * :<C-U>call <SNR>99_paste_with_key("gP", "n", v:register, v:count1)<CR>
x  gp          * :<C-U>call <SNR>99_paste_with_key("gp", "v", v:register, v:count1)<CR>
n  gp          * :<C-U>call <SNR>99_paste_with_key("gp", "n", v:register, v:count1)<CR>
x  gS            <Plug>VgSurround
n  gcu           <Plug>Commentary<Plug>Commentary
n  gcc           <Plug>CommentaryLine
o  gc            <Plug>Commentary
n  gc            <Plug>Commentary
x  gc            <Plug>Commentary
n  gf          * :call GotoFile("")<CR>
v  gv          * :call VisualSelection('gv', '')<CR>
s  h             <SNR>99_yank_with_key("h")
s  i             <SNR>99_yank_with_key("i")
v  iI          * :<C-U>cal <SNR>92_HandleTextObjectMapping(1, 1, 1, [line("'<"), line("'>"), col("'<"), col("'>")])<CR><Esc>gv
o  iI          * :<C-U>cal <SNR>92_HandleTextObjectMapping(1, 1, 0, [line("."), line("."), col("."), col(".")])<CR>
v  ii          * :<C-U>cal <SNR>92_HandleTextObjectMapping(1, 0, 1, [line("'<"), line("'>"), col("'<"), col("'>")])<CR><Esc>gv
o  ii          * :<C-U>cal <SNR>92_HandleTextObjectMapping(1, 0, 0, [line("."), line("."), col("."), col(".")])<CR>
x  ic            <Plug>GitGutterTextObjectInnerVisual
o  ic            <Plug>GitGutterTextObjectInnerPending
s  j             <SNR>99_yank_with_key("j")
s  k             <SNR>99_yank_with_key("k")
s  l             <SNR>99_yank_with_key("l")
s  m             <SNR>99_yank_with_key("m")
s  n             <SNR>99_yank_with_key("n")
s  o             <SNR>99_yank_with_key("o")
s  p             <SNR>99_yank_with_key("p")
x  p           * :<C-U>call <SNR>99_paste_with_key("p", "v", v:register, v:count1)<CR>
n  p           * :<C-U>call <SNR>99_paste_with_key("p", "n", v:register, v:count1)<CR>
s  q             <SNR>99_yank_with_key("q")
s  r             <SNR>99_yank_with_key("r")
s  s             <SNR>99_yank_with_key("s")
s  t             <SNR>99_yank_with_key("t")
s  u             <SNR>99_yank_with_key("u")
s  v             <SNR>99_yank_with_key("v")
s  w             <SNR>99_yank_with_key("w")
s  x             <SNR>99_yank_with_key("x")
s  y             <SNR>99_yank_with_key("y")
x  y           * <SNR>99_yank_with_key("y")
n  y           * <SNR>99_yank_with_key("y")
n  ySS           <Plug>YSsurround
n  ySs           <Plug>YSsurround
n  yss           <Plug>Yssurround
n  yS            <Plug>YSurround
n  ys            <Plug>Ysurround
s  z             <SNR>99_yank_with_key("z")
   <S-Insert>    <MiddleMouse>
v  <Plug>NetrwBrowseXVis * :<C-U>call netrw#BrowseXVis()<CR>
n  <Plug>NetrwBrowseX * :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())<CR>
   <SNR>102_Launch * :call <SNR>102_LaunchPeepOpenViaVim()<CR>
   <Plug>PeepOpen & <SNR>102_Launch
x  <Plug>yankstack_after_paste * :<C-U>call <SNR>99_after_paste()<CR>
n  <Plug>yankstack_after_paste * :call <SNR>99_after_paste()<CR>
x  <Plug>yankstack_substitute_newer_paste * :<C-U>call <SNR>99_substitute_paste(-v:count1, 'v')<CR>
x  <Plug>yankstack_substitute_older_paste * :<C-U>call <SNR>99_substitute_paste(v:count1, 'v')<CR>
n  <Plug>yankstack_substitute_newer_paste * :<C-U>call <SNR>99_substitute_paste(-v:count1, 'n')<CR>
n  <Plug>yankstack_substitute_older_paste * :<C-U>call <SNR>99_substitute_paste(v:count1, 'n')<CR>
v  <Plug>VgSurround * :<C-U>call <SNR>97_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR>
v  <Plug>VSurround * :<C-U>call <SNR>97_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR>
n  <Plug>YSurround * :<C-U>set opfunc=<SNR>97_opfunc2<CR>g@
n  <Plug>Ysurround * :<C-U>set opfunc=<SNR>97_opfunc<CR>g@
n  <Plug>YSsurround * :<C-U>call <SNR>97_opfunc2(v:count1)<CR>
n  <Plug>Yssurround * :<C-U>call <SNR>97_opfunc(v:count1)<CR>
n  <Plug>CSurround * :<C-U>call <SNR>97_changesurround(1)<CR>
n  <Plug>Csurround * :<C-U>call <SNR>97_changesurround()<CR>
n  <Plug>Dsurround * :<C-U>call <SNR>97_dosurround(<SNR>97_inputtarget())<CR>
n  <Plug>SurroundRepeat * .
x  <Plug>snipMateVisual * :<C-U>call <SNR>94_grab_visual()<CR>gv"_c
s  <Plug>snipMateBack * <Esc>a<C-R>=snipMate#BackwardsSnippet()<CR>
s  <Plug>snipMateNextOrTrigger * <Esc>a<C-R>=snipMate#TriggerSnippet()<CR>
n  <Plug>GitGutterPreviewHunk * :GitGutterPreviewHunk<CR>
n  <Plug>GitGutterUndoHunk * :GitGutterUndoHunk<CR>
n  <Plug>GitGutterStageHunk * :GitGutterStageHunk<CR>
n  <Plug>GitGutterPrevHunk * &diff ? '[c' : ":\<C-U>execute v:count1 . 'GitGutterPrevHunk'\<CR>"
n  <Plug>GitGutterNextHunk * &diff ? ']c' : ":\<C-U>execute v:count1 . 'GitGutterNextHunk'\<CR>"
x  <Plug>GitGutterTextObjectOuterVisual * :<C-U>call gitgutter#hunk#text_object(0)<CR>
x  <Plug>GitGutterTextObjectInnerVisual * :<C-U>call gitgutter#hunk#text_object(1)<CR>
o  <Plug>GitGutterTextObjectOuterPending * :<C-U>call gitgutter#hunk#text_object(0)<CR>
o  <Plug>GitGutterTextObjectInnerPending * :<C-U>call gitgutter#hunk#text_object(1)<CR>
n  <SNR>88_:   * :<C-U><C-R>=v:count ? v:count : ''<CR>
x  <Plug>(expand_region_shrink) * :<C-U>call expand_region#next('v', '-')<CR>
x  <Plug>(expand_region_expand) * :<C-U>call expand_region#next('v', '+')<CR>
n  <Plug>(expand_region_expand) * :<C-U>call expand_region#next('n', '+')<CR>
n  <Plug>CommentaryUndo   <Plug>Commentary<Plug>Commentary
n  <Plug>ChangeCommentary * c:<C-U>call <SNR>85_textobject(1)<CR>
o  <Plug>Commentary * :<C-U>call <SNR>85_textobject(0)<CR>
n  <Plug>CommentaryLine * :<C-U>set opfunc=<SNR>85_go|exe 'norm! 'v:count1.'g@_'<CR>
n  <Plug>Commentary * :<C-U>set opfunc=<SNR>85_go<CR>g@
x  <Plug>Commentary * :<C-U>call <SNR>85_go(line("'<"),line("'>"))<CR>
n  <Plug>Coerce * :<C-U>call <SNR>84_coerce(nr2char(getchar()))<CR>
n  <Plug>(ctrlp) * :<C-U>CtrlP<CR>
   <Plug>toggle * :call <SNR>35_toggle()<CR>
   <S-Right>   * :bnext<CR>
   <S-Left>    * :bprev<CR>
v  <S-Tab>     * <gv
   <C-Space>     ?
   ½             $
x  Ð             <Plug>yankstack_substitute_newer_paste
n  Ð             <Plug>yankstack_substitute_newer_paste
x  ð             <Plug>yankstack_substitute_older_paste
n  ð             <Plug>yankstack_substitute_older_paste
v  ë             :m'<-2<CR>`>my`<mzgv`yo`z
v  ê             :m'>+<CR>`<my`>mzgv`yo`z
n  ë             mz:m-2<CR>`z
n  ê             mz:m+<CR>`z

