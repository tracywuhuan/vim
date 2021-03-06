"prep: install vundle ctags cscope YouCompleteMe 
syntax enable
syntax on
"set background=dark
colorscheme smyck
set nu
let mapleader=","

let g:winManagerWIndowLayout='FileExplorer|TagList'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_path_to_python_interpreter = '/usr/local/bin/python3'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_tags_files = 1
" 开启语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

"winmanager
nmap wm :WMToggle<cr>
nmap wc :WMClose<cr>
"Tagbar
nmap to :Tagbar<cr>
nmap tc :TagbarClose<cr>

"switch
nmap qq <C-w><C-w>
:set cscopequickfix=s-,c-,d-,i-,t-,e-

"cscope usage: Under source code dir-> cscope -Rbq *
"then add the output file
"cscope shortcut
nmap <leader>sa :cs add cscope.out<cr>
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>si :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>


"FuzzyFinder shortcut
nmap <leader>ft :FufTag<CR>


"quickfix shortcut
nmap <F6> :cp<cr>
nmap <F7> :cn<cr>

"grep.vim
nnoremap <silent> <F3> :Grep<CR>

set nocompatible              " be iMproved  

"old vundle
"set rtp+=~/.vim/bundle/vundle/  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()  
  
" let Vundle manage Vundle  
" required!  
" old vundle 
"Plugin 'gmarik/vundle'  
Plugin 'VundleVim/Vundle.vim'

" My bundles here:  
"  
" original repos on GitHub  
Plugin 'tpope/vim-fugitive'  
Plugin 'Lokaltog/vim-easymotion'  
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}  
Plugin 'tpope/vim-rails.git'  
" vim-scripts repos  
Plugin 'L9'  
Plugin 'FuzzyFinder'  
" non-GitHub repos  
Plugin 'git://git.wincent.com/command-t.git'  
" ...  
Plugin 'Valloric/YouCompleteMe'  
call vundle#end()
filetype plugin indent on     " required!
