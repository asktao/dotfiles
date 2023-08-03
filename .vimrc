" Author: Bruce
set background=dark

set nocompatible

syntax on 

if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif

filetype plugin indent on

filetype on

filetype indent on

filetype plugin on

filetype indent plugin on 

" 文件修改之后自动载入
set autoread

"显示行号
set number
"显示光标所在的当前行的行号，其他行都为相对于该行的相对行号。"
"set relativenumber

" 突出显示当前列
"set cursorcolumn
" 突出显示当前行
set cursorline

set statusline=%-040.40(%F%m%)%-030.30([%l,%c]%)%p%%
" Always show the status line - use 2 lines for the status bar
set laststatus=2

" 设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制, 不需要可以去掉
" 好处：误删什么的，如果以前屏幕打开，可以找回
set t_ti= t_te=

set title

" 显示当前的行号列号
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=5

" 水平滚动时，光标距离行首或行尾的位置（单位：字符）。该配置在不折行时比较有用。
"set sidescrolloff=15

" 括号配对情况, 跳转并高亮一下匹配的括号
set showmatch

set hlsearch
" 打开增量搜索模式,随着键入即时搜索
set incsearch
" 搜索时忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
" set smartcase
 
" 缩进配置
" Smart indent
set smartindent
" 打开自动缩进
" never add copyindent, case error   " copy the previous indentation on
" autoindenting 
set autoindent

" tab相关变更
" 设置Tab键的宽度        [等同的空格个数]
set tabstop=2
" 每一次缩进对应的空格数
set shiftwidth=4 
" 按退格键时可以一次删掉 4 个空格
set softtabstop=4
" insert tabs on the start of a line according to shiftwidth, not tabstop
"按退格键时可以一次删掉 4 个空格
set smarttab
" 将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set expandtab
" 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

set encoding=utf-8 nobomb

set list
set listchars=tab:>-

"set t_Co=256

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


let g:go_version_warning = 0
