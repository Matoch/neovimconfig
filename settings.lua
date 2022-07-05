local o = vim.opt 

o.autoread = true
o.backup = false
o.cmdheight = 2
o.colorcolumn = '80'
o.conceallevel = 0
o.cursorline = true
o.encoding = 'utf-8'
o.errorbells = false
o.expandtab = true
o.hidden = true
o.history = 1000
o.hlsearch = true
o.ignorecase = true
o.inccommand = split
o.incsearch = true
o.laststatus = 3
o.list = true
o.listchars = {tab = '▸·▸', eol = '⏎', trail = '┈', extends = '…', precedes = '…', nbsp = '☠', lead = '·'}
o.number = true
o.relativenumber = true
o.scrolloff = 8
o.shiftwidth = 2
o.showbreak = '^'
o.smartcase = true
o.smartindent = true
o.softtabstop = 2
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.tabstop = 2 
o.textwidth = 120
o.undodir = os.getenv("HOME") .. "/.vim/nvimundodir"
o.undofile = true
o.visualbell = true
o.wrap = false

vim.wo.signcolumn = 'yes:1'

vim.cmd("colorscheme gruvbox")
vim.cmd('highlight WinSeparator guibg=None')
vim.cmd('let g:rainbow_active = 1')
vim.cmd('set iskeyword+=-')
