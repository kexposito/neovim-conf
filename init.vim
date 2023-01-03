" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

"Buffers"
map ]b :bnext<CR>
map [b :bprev<CR>
map <C-b> :CtrlPBuffer<CR>

" same insert cursor all modes
set guicursor=

" use mouse to move
set mouse=a

"relative number
set number relativenumber
set numberwidth=1

",e mapping to open file current dir
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,vs :vs <C-R>=expand("%:p:h") . "/" <CR>

" yank text
set cpoptions+=y
set clipboard=unnamed

syntax enable

" line number at bottom
set showcmd

" Config alternative escape options
imap jj <Esc>
imap kk <Esc>
imap kj <Esc>
imap jk <Esc>

" Allow 10 lines margin when scrolling
set scrolloff=10

"highlight matching [{}]
set showmatch

" indent using 2 spaces
set sw=2

" set autoindent
set ignorecase
set hlsearch

" Set split separator to Unicode box drawing character
set encoding=utf8
set fillchars=vert:│

" Always show status
" set laststatus=2G

" Override color scheme to make split the same color as tmux's default
autocmd ColorScheme * highlight VertSplit cterm=NONE ctermfg=Green ctermbg=NONE

" change order of lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nmap J :m '>+1<CR>gv=gv
nmap K :m '<-2<CR>gv=gv

nmap <silent> ,/ :nohlsearch<CR>

let mapleader=" "
nmap <Leader>+h ^
nmap <Leader>+l $
vmap <Leader>+h ^
vmap <Leader>+l $

call plug#begin("~/.vim/plugged")
  Plug 'scrooloose/nerdtree'
  Plug 'https://github.com/altercation/vim-colors-solarized'
  Plug 'jpo/vim-railscasts-theme'
  Plug 'overcache/NeoSolarized'
  Plug 'https://github.com/tpope/vim-rails'
  Plug 'https://github.com/bronson/vim-trailing-whitespace'
  Plug 'https://github.com/tpope/vim-commentary'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'https://github.com/tpope/vim-fugitive'
  Plug 'easymotion/vim-easymotion'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'morhetz/gruvbox'
  " Plug 'jiangmiao/auto-pairs'
  Plug 'https://github.com/dhruvasagar/vim-zoom'
  " Plug 'https://github.com/mustache/vim-mustache-handlebars'
  Plug 'joukevandermaas/vim-ember-hbs'
  Plug 'https://github.com/pangloss/vim-javascript'
  " Plug 'https://github.com/othree/yajs.vim'
  "
  "Neovim 0.5
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'dracula/vim', { 'as': 'dracula' }

  Plug 'elixir-editors/vim-elixir'

  " Plug 'https://github.com/alvan/vim-closetag'

  " React
  Plug 'maxmellon/vim-jsx-pretty'

  " COC
  " Use release branch (recommend)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Or build from source code by using yarn: https://yarnpkg.com
  " Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

  " LazyGit
  Plug 'kdheepak/lazygit.nvim'
call plug#end()
""
"" Whitespace
""
set wrap                          " wrap lines, use set nowrap to avoid wrapping
set softtabstop=2                 " use mix of spaces and tabs
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Prettier
" let g:neoformat_try_node_exe = 1
" autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Lazy Git
" let g:lazygit_floating_window_winblend = 0 " transparency of floating window
" let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
" let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
" let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
" let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed

nnoremap <silent> <leader>gg :LazyGit<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" EasyMotion
nmap <Leader>s <Plug>(easymotion-s2)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" <Leader><Leader>w(<Plug>(easymotion-w)) <- :D

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" CtrlpVim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Gruvbox
" Gruvbox colorscheme with italics and true colors
" let g:gruvbox_italic = 1
" colorscheme gruvbox
" if has("termguicolors")
" 		    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" 		    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"      set termguicolors
" endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Railcast
colorscheme railscasts
set background=dark


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Dracula
" colorscheme dracula
" set background=dark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>
" cloase vim when nerdtree is open and no other content
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeStatusline = '%#NonText#'

"""Vim zoom"""
" set statusline+=%{zoom#statusline()}
nmap <Leader>m <Plug>(zoom-toggle)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vim Mustache Handlebars
let g:mustache_abbreviations = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>p <cmd>Telescope find_files<cr>
nnoremap <leader>b <cmd>Telescope buffers show_all_buffers=true<cr>
nnoremap <leader>c <cmd>Telescope git_commits<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
lua require('telescope').setup{defaults = { file_ignore_patterns = { 'node_modules', 'node_modules/', 'node%_modules' }}}
" nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers{ show_all_buffers = true }<cr>
" nnoremap <leader>p <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>g <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>h <cmd>lua require('telescope.builtin').help_tags()<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vim Fugitive Ggrep navigation
nmap [q <cmd>:cprev<cr>
nmap ]q <cmd>:cnext<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""coc
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Move between errors
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>
