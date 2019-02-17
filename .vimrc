" >> 定义快捷键的前缀，即 <Leader>
let mapleader=";"

" >> vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" 主题类
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'dracula/vim'
" 导航条
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" 缩进线
Plugin 'Yggdroot/indentLine' "
" 高亮
Plugin 'octol/vim-cpp-enhanced-highlight' " C++
" 跳转
"   接口与实现快速切换
Plugin 'derekwyatt/vim-fswitch'
"   书签可视化
Plugin 'kshenoy/vim-signature'
"   基于tag

"   基于语义

" 插件列表结束
call vundle#end()
filetype plugin indent on

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 配色方案
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme dracula
"colorscheme phd

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
"hi LineNr ctermbg=darkgray ctermfg=darkred
" 高亮显示当前行/列
set cursorline
"hi CursorLine  ctermbg=darkgray
"set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" airline 设置
set encoding=utf8
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" 字体显示问题，替换为可显示字体
let g:airline_symbols.linenr = ' '
let g:airline_symbols.whitespace = '$'

" 设置字体 已经在 .Xresources 配置终端字体
"set guifont=set guifont=DejaVu\ Sans\ Mono\ for\ Powerline,DejaVu\ Sans

" 代码缩进
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 记住上次打开位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" >> 快捷键设置
" 开启/关闭 缩进线
:nmap <leader>i :IndentLinesToggle <cr>
" cpp 接口/实现跳转
:nmap <leader>sw :FSHere<cr>

" >> 代码折叠
" 操作：za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠。
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" vim-signature 书签快捷键定义
" m, 下一个可用数千名
" mx 设定/取消当前行名为 x 的书签
" mda 删除当前文件所有独立书签
" m/ 列出所有书签
" mn 按行号顺序跳转至下一个书签
" mp 按行号顺序跳转至上一个书签
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }


