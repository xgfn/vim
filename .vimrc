set nocompatible              " be iMproved
filetype off                  " required!

"My Config=========================================="
set nu  "line number
set ts=4 "tabstop width"
set expandtab "tab expand space"
"set cindent
"set autoindent
set smartindent
set shiftwidth=4 "缩进宽度

"set encoding format 
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,latin1
set termencoding=utf-8

"set map leader
let mapleader=","

syntax on 
color desert "mac
set backspace=2 "resolve under insert mode in mac, can not delete forward

"set tabpage
set showtabline=1
hi TabLine term=bold cterm=bold gui=bold "not active tabpage color, remove under line 
hi TabLine ctermbg=0
hi TabLine ctermfg=0
hi TabLineSel term=bold cterm=bold gui=bold "active tabpage color
hi TabLineSel ctermfg=6
hi TabLineFill term=bold cterm=bold gui=bold "no lables tabpage color

"Preview Show
"set completeopt-=preview    "去除烦人的scratch预览窗口, 但是会影响YCM的体验, 所以这里不关闭


"Plugin Config======================================"
"taglist{   
    "specified dirs:-R -a dir1  dir2 "
    "ctags  --c++-kinds=+p --fields=+iaS --extra=+q -a include/ test/ src/ -R -a include/ test/ src/"
    "ctrl+f12 in source root dir"
    map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
    let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
    let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
    let Tlist_Use_Left_Window = 1          "在左侧窗口中显示taglist
    let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
    let Tlist_Ctags_Cmd='ctags'            "设置ctags命令的位置
    nnoremap <leader>tl : Tlist<CR>        "设置关闭和打开taglist窗口的快捷键
"}

"YouCompleteMe{
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf='~/locket/.ycm_extra_conf.py' "放在工程根目录下，可以自动搜索,所以不需要指定
let g:ycm_confirm_extra_conf = 0               "Turn off confirm
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <leader>jl :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>jk :YcmCompleter GoToDefinition<CR>
let g:ycm_error_symbol = '>e'
let g:ycm_warning_symbol = '>w'
let g:ycm_enable_diagnostic_signs = 1           "语法错误提示
let g:ycm_enable_diagnostic_highlighting = 1    "语法错误高亮
let g:ycm_key_invoke_completion = '<C-a>'       "Ycm不会补全printf这类全局函数，需要通过这个命令手动调用补全
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1 "在完成输入，退出insert模式后, 烦人的scratch窗口会自动关闭
"}

"Ag{
"Install : brew install the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

"}

"vundle Config======================================"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" 可以通过以下四种方式指定插件的来源
" a) 指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空格使用“-”代替。
Bundle 'L9'
Bundle 'taglist.vim'
Bundle 'a.vim'
Bundle 'ag.vim'
Bundle 'ctrlsf.vim'

" b) 指定Github中其他用户仓库的插件，使用“用户名/插件名称”的方式指定
"Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Valloric/YouCompleteMe'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'

" c) 指定非Github的Git仓库的插件，需要使用git地址
"Bundle 'git://git.wincent.com/command-t.git'

" d) 指定本地Git仓库中的插件
"Bundle 'file:///Users/gmarik/path/to/plugin'

filetype plugin indent on     " required!

