syntax enable
syntax on
colorscheme desert
set nu
let mapleader=","
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

let g:winManagerWIndowLayout='FileExplorer|TagList'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_min_num_of_chars_for_completion = 1

"winmanager
nmap wm :WMToggle<cr>
nmap wc :WMClose<cr>
"Taglist
nmap to :TlistToggle<cr>
nmap tc :TlistClose<cr>

"switch
nmap qq <C-w><C-w>
:set cscopequickfix=s-,c-,d-,i-,t-,e-

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
  
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
" let Vundle manage Vundle  
" required!  
Bundle 'gmarik/vundle'  
  
" My bundles here:  
"  
" original repos on GitHub  
Bundle 'tpope/vim-fugitive'  
Bundle 'Lokaltog/vim-easymotion'  
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  
Bundle 'tpope/vim-rails.git'  
" vim-scripts repos  
Bundle 'L9'  
Bundle 'FuzzyFinder'  
" non-GitHub repos  
Bundle 'git://git.wincent.com/command-t.git'  
" Git repos on your local machine (i.e. when working on your own plugin)  
Bundle 'file:///Users/gmarik/path/to/plugin'  
" ...  
Bundle 'Valloric/YouCompleteMe'  
filetype plugin indent on     " required!
