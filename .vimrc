set nocompatible              " be iMproved, required
filetype off                  " required

"install Vundle like this:
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vimconfig/vundle/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"""----------------------------------------------------------------------------------------
Plugin 'SuperTab'
Plugin 'dkprice/vim-easygrep'
Plugin 'VimExplorer'
Plugin 'quickrun.vim'

"Plugin 'Shougo/neocomplete.vim'
"Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline'

Plugin 'matchit.zip'
Plugin 'YankRing.vim'
Plugin 'easymotion/vim-easymotion'

"Plugin 'terryma/vim-multiple-cursors'

"Plugin 'rking/ag.vim'

Plugin 'vim-easy-align'
"Plugin 'HTML-AutoCloseTag'
"Plugin 'DBGPavim'
Plugin 'L9'
"Plugin 'phpfolding.vim'
"Plugin 'FuzzyFinder'
"Plugin 'ShowMarks'
"Plugin 'VOoM'
Plugin 'SearchComplete'
"Plugin 'vimwiki'
Plugin 'tpope/vim-repeat'
Plugin 'jsbeautify'
Plugin 'surround.vim'
"Plugin 'Quramy/vison'

Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'

Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'


Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'

"Plugin 'aquach/vim-http-client'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'Decho'
"Plugin 'vimshell-ssh'    
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'

Plugin 'VisIncr'
Plugin 'auto_mkdir'

"Plugin 'Markdown-syntax'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'xml.vim'
Plugin 'The-NERD-Commenter'
Plugin 'luochen1990/rainbow'

Plugin 'Gundo'

"Plugin 'mikelue/vim-maven-plugin'

"Plugin 'JavaDecompiler.vim'

Plugin 'airblade/vim-rooter'
Plugin 'luochen1990/select-and-search'
Plugin 'Mark'
"filetype log(log4j) and javalog(java exception)
Plugin 'sxinle/vim-log-syntax'
Plugin 'hdima/python-syntax'
Plugin 'davidhalter/jedi-vim'

"Plugin 'tfnico/vim-gradle'
"Plugin 'ujihisa/vimshell-ssh'

"Plugin 'chrisbra/vim-diff-enhanced'
Plugin 'li-yanqing/vim-json-line-format' 


"color
"Plugin 'dw_colors'
Plugin 'Color-Sampler-Pack'
Plugin 'ScrollColors'
Plugin 'sentientmachine/erics_vim_syntax_and_color_highlighting'

"""----------------------------------------------------------------------------------------
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
let mapleader = ","
set relativenumber

"set encoding=utf-8
set fileencodings=utf-8,gbk
set nowrap
set noswapfile

set directory=$TEMP

set sm "match the { or ( or [
set ai "auto align
set sw=4 "tab length
set textwidth=0 "maxlength of line
set conceallevel=2 "for json format
set autoread "auto load file change

set nobackup "don't backup file
set undofile  "Open Persistent Undo
set undodir=$HOME/\_undodir
set undolevels=1000  "how many operation could be undone

set tabstop=4 "tab to space
set expandtab
set linespace=1
set ve=all
set autochdir  "auto change to current folder
set guifont=Consolas:12
set ignorecase smartcase

"auto change dir to current dir
"au BufRead,BufNewFile * cd %:p:h


""map <F5> <Esc>:tabnew<cr>
""map <F4> <Esc>:tabclose<cr>
""map <F2> <Esc>:tabprevious<cr>
""map <F3> <Esc>:tabnext<cr>

"custom operation{{{

"Disable q: but let 'q' not quickly
"map q: <Nop>
map / /\v
nnoremap Q <nop>


" capitalize
inoremap <c-j> <Esc>mzb~`za


noremap <Leader>q <Esc>:q<cr>
noremap <Leader><leader>q <Esc>:tabclose<cr>
noremap <Leader>Q <Esc>:q!<cr>


map <C-t> <Esc>:tabnew<cr>
map <C-u> <Esc>:tabnext<cr>
map <C-y> <Esc>:tabprevious<cr>
"format json
"map <Leader><Leader>fj  !python -m json.tool<CR>
"format xml
map <Leader><Leader>fx  V:!xmllint --format --recover - 2>/dev/null <CR>

"remove space 
map <Leader><Leader>ks  :s/\s\+/ /g<CR>
map <Leader><Leader>kS  :s/\s\+//g<CR>
"Transform path sperator
map <Leader><Leader>kp  :s/\\/\//g<CR>
map <Leader><Leader>kP  :s/\\/\\\\/g<CR>


"base64 encode
"map <Leader><Leader>be  y<Esc>gv:!base64 <CR>kp
"map <Leader><Leader>bd  !base64 -d -i <CR>
nnoremap <leader><leader>be :python base64_encode_append()<CR>
nnoremap <leader><leader>bd :python base64_decode_append()<CR>


nnoremap <M-d> <c-f>
nnoremap <M-f> <c-b>

nnoremap Y y$
nnoremap U <Esc>:redo<CR>
map ;/ <Esc>:nohlsearch<cr>
nnoremap ;ft <Esc>:set filetype=

"select a word
nnoremap <Space> <Esc>viw
"select more words
vnoremap <Space> e
"save file
nnoremap <m-s> <Esc>:update<cr>
"wrap
nnoremap ;w  :call ToggleWrap()<cr>
function! ToggleWrap()
    set wrap!
    let wrap = &wrap
    echo wrap
    if(wrap)
        noremap j gj
        noremap k gk
    else
        unmap j
        unmap k
    endif
endfunction

"menu
nnoremap ;m <Esc>:set guioptions+=m<cr>
nnoremap ;;m <Esc>:set guioptions-=m<cr>

"rainbow
nnoremap ;r <Esc>:RainbowToggle<cr>

"refresh file
nnoremap zb <Esc>zfgg<cr>

"folder code block
nnoremap <Leader><Leader>cc f{zf%

"nmap gc V,r<c-h>:4<cr>f{i<cr><esc>Vy<c-l>p  
"nmap gc V,r<c-h>:3<cr>f{i<cr><esc>V,,fj
"nmap gc 10I#<esc>yss"Iecho <esc>
"nmap gc V,r<c-h>V,,fj<esc>
nmap gc V,r

"unused keys
map ZZ <nop>
map <s-Space> <nop>


noremap <C-J> <esc><C-W>j
noremap <C-K> <esc><C-W>k
noremap <C-H> <esc><C-W>h
noremap <C-L> <esc><C-W>l

nmap <c-left> <c-w><
nmap <c-right> <c-w>>
nmap <c-up> <c-w>+
nmap <c-down> <c-w>-


"print custom pattern
nnoremap  <Leader>gl  <esc>:vimgrep! /start \w\+Transform/ %:p<cr>:copen<cr>

"}}}custom operation




"color scheme
syntax on 
"set background=light
set background=dark
colorscheme desert
"colorscheme desertEx
"colorscheme desert256 

"for interface
"set guioptions-=T "tool bar
"set guioptions+=m "menu
"set guioptions+=e "Tab line
set guioptions-=e "Tab line
"set guioptions+=b "bottom splide


set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" not menu and bar
set guioptions-=m
set guioptions-=T

" show status always
set laststatus=2
" show current cursors
set ruler
" show line number
set number
" highlight current line
"set cursorline
"set cursorcolumn
" highlight search result
set hlsearch

"Gundo
set undofile
set undodir=$HOME/_gundo/
noremap ,u <esc>:GundoToggle<cr>



"Ag
"if executable('ag')
    "" Use Ag over Grep
    "set grepprg=ag\ --nogroup\ --nocolor
"endif
"configure ag.vim to always start searching from your project root instead of the cwd
let g:ag_working_path_mode="r"
let g:ag_highlight=1
"nnoremap <silent> <Leader>vv  <Esc>:Ag <cword><cr>
"nnoremap <silent> <Leader>vf  <Esc>:AgFile <cword><cr>
"vnoremap \fv  :call SeachSelectInFile()<cr>

"function! SeachSelectInFile()  range
    "let w = select_and_search#get_selected_text()
    "echo w
"endfunction





"EasyGrep
let g:EasyGrepRecursive = 1
let g:EasyGrepOpenWindowOnMatch=0
let g:EasyGrepFilesToExclude = ".git, *.class, *.jar, *.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"
let EasyGrepHidden=1
let EasyGrepWindow=1
let EasyGrepJumpToMatch=0
let g:EasyGrepCommand=0




"vim-multiple-cursors
" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
    if exists(':NeoCompleteLock')==2
        exe 'NeoCompleteLock'
    endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
    if exists(':NeoCompleteUnlock')==2
        exe 'NeoCompleteUnlock'
    endif
endfunction



"numbers.vim
nnoremap ;n :NumbersToggle<CR>


"QuickRun
nmap <Leader>r <Esc>:QuickRun<cr>
vmap <Leader>r :QuickRun bash<cr>
let g:quickrun_config = {}
let g:quickrun_config.python = {
            \ 'type': 'python',
            \ 'command' : 'python3',
            \ 'exec' : '%c %s',
            \ 'outputter':'buffer'
            \ }
let g:quickrun_config.groovy = {
            \ 'type': 'groovy',
            \ 'command' : 'groovyclient',
            \ 'exec' : '%c %s',
            \ 'outputter':'buffer'
            \ }  
let g:quickrun_config.markdown = {
            \ 'type': 'markdown/pandoc',
            \ 'command' : 'E:/programs/Markdown/MarkdownEditor.exe',
            \ 'exec' : '%c %s',
            \ 'outputter':'null'
            \ }  

"select & search
let g:select_and_search_active = 3

"vim-json-line-format
nnoremap <leader><Leader>fj :python json_line_format_write()<CR>
nnoremap <leader><Leader>fp :python json_line_format_print()<CR>

"rainbow
let g:rainbow_active=1

"SuperTab
let g:SuperTabRetainCompletionType = 0 
"let g:SuperTabDefaultCompletionType = '<c-x><c-u>'

"translator.vim
nnoremap <leader>tr :TranCursor<CR>
vnoremap <leader>tr :TranCursor<CR>
nnoremap <leader>tc :TranClose<CR>

"vim-markdown
let g:vim_markdown_folding_disabled = 1

"Python
au FileType python call Python_init()
autocmd FileType python setlocal omnifunc=jedi#completions
function! Python_init()
    set foldmethod=indent
    set foldlevel=99
endfunction
"jedi
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

"Groovy
"au FileType groovy call AddGroovyFuncList()
"function! AddGroovyFuncList()
    ""execute("NeoCompleteLock")
    "set  tags-=e:\programs\vim\groovy-tags, tags-=e:\programs\vim\groovy-api-tags, tags-=e:\programs\vim\jdk-tags
    "set  tags+=e:\programs\vim\groovy-tags, tags+=e:\programs\vim\groovy-api-tags, tags+=e:\programs\vim\jdk-tags
"endfunction

"Markdown
"au FileType markdown call MarkdownFile()
"function! MarkdownFile()
    "set  dictionary-=e:\programs\vim\engwords
    "set  dictionary+=e:\programs\vim\engwords
    "let g:SuperTabDefaultCompletionType = "<c-x><c-k>"
"endfunction




"VimShell
nnoremap ,,v <Esc>:VimShellCreate<cr>
autocmd FileType vimshell call VimInit()
function! VimInit()
    call vimshell#altercmd#define('l', 'll')
    call vimshell#altercmd#define('ll', 'ls -l')
    nnoremap <buffer> G <Esc>GA
endfunction




"Mark
map <Leader>mm <Plug>MarkSet
map <Leader>mn <Plug>MarkClear
map <Leader>mr <Plug>MarkRegex


"Rooter 
let g:rooter_use_lcd = 1 " local buffer change 
let g:rooter_silent_chdir = 0 "quietly change dir
let g:rooter_manual_only = 0 "don't auto change to root directory
map <silent> <Leader>cd <Plug>RooterChangeToRootDirectory
map  <Leader>ce <Esc>:set autochdir<cr>
map  ;ce <Esc>:set noautochdir<cr>

"YankRing
map <Leader>p <Esc>:YRShow<cr>
let g:yankring_max_history = 100

"EasyMotion
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 1
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-overwin-f2)

hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment
hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen
hi link EasyMotionMoveHL Search




"EasyAlign
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)






"format =
noremap ff vip=
"CtrlP
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_open_new_file = 't'
noremap mm <Esc>:CtrlPMRU<cr>
noremap mf <Esc>:CtrlP<cr>
noremap mb <Esc>:CtrlPBuffer<cr>
nnoremap ;;r <Esc>:CtrlPClearCache<cr>

"set wildignore=*.o,*.obj
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_regexp = 0
let g:ctrlp_mruf_max=1000
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](\.git|\.hg|\.svn|target)$',
            \ 'file': '\v\.(exe|so|dll|jpg|png|jpeg)$',
            \ }



"Unite
nmap <Leader>l  <esc>:Unite outline<cr><esc>:sleep 100 m<cr>i

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
""" neosnippets ---------------------------------------------------------------------------------------------------
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
"""---------------------------------------------------------------------------------------------------

"""---------------------------------------------------------------------------------------------------
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#auto_completion_start_length = 3
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default' : $HOME.'/.vimconfig/engwords-long.txt',
            \ 'php' : 'e:\programs\vim\php_funclist.txt',
            \ 'markdown' : $HOME.'/.vimconfig/engwords-long.txt',
            \ 'java' : $HOME.'/.vimconfig/jdk.dict',
            \ 'groovy' : $HOME.'/.vimconfig/groovy.dict,'.$HOME.'/.vimconfig/javafx.dict,'.$HOME.'/.vimconfig/vds.dict',
            \ 'gradle' : $HOME.'/.vimconfig/gradle.dict',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'python' : $HOME.'/.vimconfig/python.dict,'.$HOME.'/.vimconfig/py-tf.dict',
            \ 'scheme' : $HOME.'/.gosh_completions'
            \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '[a-zA-Z]*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

"" Recommended key-mappings.
"" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplete#cancel_popup()

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

"""----------------------------------------------------------------------------------------
" file is large from 100mb
let g:LargeFile = 1024 * 1024 * 100
augroup LargeFile 
 autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END

function! LargeFile()
 " no syntax highlighting etc
 set eventignore+=FileType
 " save memory when other file is viewed
 setlocal bufhidden=unload
 " is read-only (write with :w new_filename)
 setlocal buftype=nowrite
 " no undo possible
 setlocal undolevels=-1
 " display message
 autocmd VimEnter *  echo "The file is larger than " . (g:LargeFile / 1024 / 1024) . " MB, so some options are changed (see .vimrc for details)."
endfunction
"""----------------------------------------------------------------------------------------

