"开启语法高亮
syntax on
"检测文件类型
"filetype on
"设置leader
let mapleader=','
"针对不同的文件类型采用不同的缩进格式
filetype indent on
"允许插件
filetype plugin on
"启动自动补全
"filetype plugin indent on
"文件修改之后自动载入
set autoread
"取消备份，视情况自己改
set nobackup
"关闭交换文件
set noswapfile
"鼠标启用
set mouse=a
"显示当前的行号列号
set ruler
"在状态栏显示正在输入的命令
set showcmd
"左下角显示当前vim模式
set showmode
"括号配对情况, 跳转并高亮一下匹配的括号
set showmatch
"How many tenths of a second to blink when matching brackets
set matchtime=2
"高亮search命中的文本
set hlsearch
"打开增量搜索模式,随着键入即时搜索
set incsearch
"搜索时忽略大小写
set ignorecase
"有一个或以上大写字母时仍大小写敏感
set smartcase
"缩进配置
set smartindent
"打开自动缩进
set autoindent
"设置Tab键的宽度
set tabstop=4
"每一次缩进对应的空格数
set shiftwidth=4
"按退格键时可以一次删掉 4 个空格
set softtabstop=4
"按退格键时可以一次删掉 4 个空格
set smarttab
"将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set expandtab
"缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
set shiftround
"设置新文件的编码为 UTF-8
set encoding=utf-8
"兼容各平台编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"显示行号
set number
"换行
set wrap
"突出显示当前行
set cursorline
"去掉输入错误的提示声音
set noerrorbells
set vb t_vb= 
"插入模式下启用回退删除
set backspace=indent,eol,start
"基于缩进的代码折叠
set foldmethod=indent
"启动 vim 时关闭折叠代码
set nofoldenable
"空格折叠快捷键设置
nnoremap <space> za<CR>
"F2 行号开关，用于鼠标复制代码用
nnoremap <F2> :set number! nonu?<CR>
"F3 显示可打印字符开关
"nnoremap <F3> :set list! list?<CR>
"F4 换行开关
nnoremap <F4> :set wrap! wrap?<CR>
"粘贴模式开关
set pastetoggle=<F9>
"鼠标开关
nmap mm :set mouse=a<CR>
nmap mu :set mouse-=a<CR>

"针对Mac设置字体
if has("gui_running")
    set guifont=Monaco:h14
endif

"自动加载
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"Vundle设置，先下载
"$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              "be iMproved, required
filetype off                  "required
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"The following are examples of different formats supported.
"Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'eshion/vim-sftp-sync'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-powerline'
Plugin 'sickill/vim-monokai'
"Plugin 'majutsushi/tagbar' "需要先安装ctags5.5+
"Plugin 'tomasr/molokai'
"Plugin 'altercation/vim-colors-solarized'
"All of your Plugins must be added before the following line
call vundle#end()            "required
filetype plugin indent on    "required
"To ignore plugin indent changes, instead use:
"filetype plugin on
"Brief help
":PluginList       - lists configured plugins
":PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
":PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"see :h vundle for more details or wiki for FAQ
"Put your non-Plugin stuff after this line

"主题设置
set t_Co=256
"let g:molokai_original = 1
"let g:rehash256 = 1
"let g:solarized_termcolors=16
"set background=dark
colorscheme monokai

"NERDTree设置
"在未定义文件的情况下打开目录
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

"ctrlp设置
let g:ctrlp_map = '<c-p>'
map <C-l> :CtrlPBuffer<CR>
map <C-m> :CtrlPMRU<CR>

"fugitive、powerline设置状态行
"命令行（在状态行下）的高度，默认为1，这里是2
set statusline+=%{fugitive#statusline()}
"Always show the status line - use 2 lines for the status bar
set laststatus=2

"indentLine显示设置
nnoremap <F6> :IndentLinesToggle<CR>
let g:indentLine_enabled = 0

"syntastic设置
nnoremap <F7> :SyntasticToggleMode<CR>
nnoremap <F8> :SyntasticReset<CR>

"tagbar设置
"nmap <F3> :TagbarToggle<CR>

"airline设置
"let g:airline_theme='dark'
"let g:airline#extensions#tabline#enabled = 1

"vim-powerline设置
"let g:Powerline_symbols = 'fancy'

"vim-sftp-sync配置
"let g:vim_sftp_configs = {
"\      'sample_server_1' : {
"\       'upload_on_save'   : 1,
"\       'download_on_open' : 0,
"\       'confirm_downloads': 1,
"\       'confirm_uploads'  : 0,
"\       'local_base_path'  : '/Users/name/sample/',
"\       'remote_base_path' : '/var/www/sample/',
"\       'sftp_command' : 'ftp',
"\       'user' : 'username',
"\       'pass' : 'password',
"\       'host' : '127.0.0.1'
"\   },
"\   'sample_server_2' : {
"\       'upload_on_save'   : 1,
"\       'download_on_open' : 1,
"\       'confirm_downloads': 0,
"\       'confirm_uploads'  : 0,
"\       'local_base_path'  : '/Users/development',
"\       'remote_base_path' : '/var/www/development/trunk/',
"\       'sftp_command' : 'sftp',
"\       'complete_prompt_regexp' : '100\%',
"\       'user' : 'username',
"\       'pass' : 'password',
"\       'host' : '-P22 user@127.0.0.1'
"\   }
"\}
