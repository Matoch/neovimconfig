vim.g.mapleader = ' '
vim.o.autoread = true
vim.o.backup = false
vim.o.cmdheight = 2
vim.o.colorcolumn = 80
vim.o.cursorline = true
vim.o.errorbells = false
vim.o.expandtab = true
vim.o.hidden = true
vim.o.history = 1000
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.inccommand = split
vim.o.incsearch = true
vim.o.laststatus = 3
vim.o.list = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 8
vim.o.shiftwidth = 2
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.softtabstop = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.tabstop = 2 
vim.o.textwidth = 120
vim.o.visualbell = true
vim.o.wrap = false

vim.opt.encoding = 'utf-8'
vim.opt.listchars = {tab = '▸·▸', eol = '⏎', trail = '┈', extends = '…', precedes = '…', nbsp = '☠', lead = '·'}
vim.opt.showbreak = '^'
vim.opt.undodir = os.getenv("HOME") .. "/.vim/nvimundodir"
vim.opt.undofile = true
vim.wo.signcolumn = 'yes:1'

vim.cmd("colorscheme gruvbox")
vim.cmd('highlight WinSeparator guibg=None')
vim.cmd('let g:rainbow_active = 1')
vim.cmd('set iskeyword+=-')
