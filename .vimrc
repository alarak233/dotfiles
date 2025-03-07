call plug#begin()

Plug 'preservim/nerdtree'
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim',{'branch':'release'}

call plug#end()

" autocmd vimenter * NERDTree

" 基本设置
set number            " 显示行号
" set relativenumber    " 启用相对行号
set smartindent       " 自动缩进
set tabstop=4         " Tab 宽度
set shiftwidth=4      " 每次缩进的宽度
" set expandtab         " 使用空格代替 Tab

" 搜索设置
set smartcase         " 智能区分大小写
set incsearch         " 实时搜索
set hlsearch          " 高亮搜索结果

" 界面和显示设置
set showcmd           " 显示命令输入
set showmode          " 显示模式
set cursorline        " 高亮当前行
set wrap              " 自动换行

" 语法和编码设置
syntax enable         " 启用语法高亮
set fileencoding=utf-8 " 设置文件编码为 UTF-8
set fileformat=unix   " 设置换行符格式为 Unix

" 鼠标支持
set mouse=a           " 启用鼠标支持

" 主题
colorscheme codedark

" vim-coc快捷键配置
" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
