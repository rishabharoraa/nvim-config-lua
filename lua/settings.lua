vim.o.title = true
vim.o.fileencoding = "utf-8"
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
--vim.cmd('set termguicolors')
vim.cmd('hi LineNr ctermbg=NONE guibg=NONE')



vim.cmd('set ts=4')
vim.cmd('set sw=4')
vim.cmd('highlight Normal ctermbg=none')
vim.cmd('highlight NonText ctermbg=none')
vim.cmd('hi cursorline cterm=NONE ctermbg=236')

-- vim-airline settings
vim.g.airline_theme = 'zenburn' --default->zenburn
vim.g.airline_powerline_fonts = 1
vim.cmd('let g:airline#extensions#tabline#enabled = 1')

-- for c++ syntax highlighting
vim.cmd('au FileType cpp let b:AutoPairs = AutoPairsDefine({"/*" : "*/"})')
