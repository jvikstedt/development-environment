vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

-- vim.opt.tabstop = 2
-- vim.opt.softtabstop = 2
-- vim.opt.shiftwidth = 2
-- vim.opt.expandtab = true
vim.opt.smartindent = true

vim.cmd[[set ts=2]]
vim.cmd[[set shiftwidth=2]]
vim.cmd[[set expandtab]]
vim.cmd[[set nostartofline]]

vim.cmd[[set list listchars=tab:>-,trail:~,extends:>,precedes:<,nbsp:+]]
vim.cmd[[highlight ExtraWhitespace ctermbg=red guibg=red]]
vim.cmd[[match ExtraWhitespace /\s\+$/]]

vim.cmd[[set wildmode=longest,list,full]]
vim.cmd[[set wildmenu]]

vim.opt.wrap = true
vim.opt.textwidth = 80

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
