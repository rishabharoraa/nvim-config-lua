vim.o.title = true
vim.cmd('set encoding=UTF-8')
vim.o.mouse = 'a'
vim.o.t_Co = '256'
vim.o.showtabline = 2
vim.o.updatetime = 300
vim.o.timeoutlen = 100
--vim.o.termguicolors = true

vim.bo.expandtab = true
vim.bo.smartindent = true
vim.wo.number = true
vim.wo.cursorline = true

--colorscheme
vim.cmd('let g:nvcode_termcolors=256')
vim.cmd('syntax on')
vim.cmd('colorscheme nvcode')
--vim.cmd('hi LineNr ctermbg=NONE guibg=NONE')

vim.cmd('set ts=4')
vim.cmd('set sw=4')
--vim.cmd('highlight Normal ctermbg=none')
--vim.cmd('highlight NonText ctermbg=none')
vim.cmd('hi cursorline cterm=NONE ctermbg=236')

-- vim-airline settings
vim.g.airline_theme = 'zenburn'
vim.g.airline_powerline_fonts = 1
vim.cmd('let g:airline#extensions#tabline#enabled = 1')
vim.cmd('let g:airline#extensions#tabline#formatter = \'unique_tail\'')

-- for c++ syntax highlighting
vim.cmd('au FileType cpp let b:AutoPairs = AutoPairsDefine({"/*" : "*/"})')

--netrw config
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.netew_liststyle = 3
vim.g.netrw_browse_split = 3
vim.cmd('nnoremap <space>e :CocCommand explorer<CR>')

--coc config
vim.cmd('set hidden')
vim.cmd('set cmdheight=1')
vim.cmd('set updatetime=300')
vim.cmd('set shortmess+=c')
vim.cmd('set signcolumn=yes')
vim.cmd('hi signcolumn ctermbg=NONE guibg=NONE')

--remove indent after access modifier in class
vim.cmd('set cindent')
vim.cmd('set cinoptions=g-1')

--move between tabs
vim.cmd('nnoremap <A-Left> :bprev<CR>');
vim.cmd('nnoremap <A-Right> :bnext<CR>');

vim.cmd('set conceallevel=0')
--vim.cmd('set guicursor=')

--vim.api.nvim_command([[augroup RestoreCursorShapeOnExit    au!    augroup END]])
--au VimLeave * set guicursor=|

vim.api.nvim_command('augroup CursorBullshit')
vim.api.nvim_command('autocmd!')
vim.api.nvim_command('autocmd VimLeave * set guicursor=a:ver100')
vim.api.nvim_command('augroup END')
