set nocompatible        " be iMproved, required

filetype off                " required

"enable syntax highlighting
syntax enable

" show line number
set number

" highlight searched element
set incsearch

" set tab size
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} ()
set showmatch

" enable all python syntax highlighting features
let python_highlight_all = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Git Gutter
Plugin 'airblade/vim-gitgutter'

"Nerd Tree
Plugin 'scrooloose/nerdtree'

"Nerd Tree Tab
Plugin 'jistr/vim-nerdtree-tabs'

" Vim airline and theme
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Python Autocomplete
Plugin 'davidhalter/jedi-vim'

" PHP Auto completio
Plugin 'shawncplus/phpcomplete.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Mapping shortcut for NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

" Indent level match
imap <C-Return> <CR><CR><C-o>k<Tab>


" Setting backspace back to normal
set backspace=indent,eol,start

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/                                 

