vim.opt.nu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.colorcolumn = "121"

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 20

vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " "
vim.g.python3_host_prog = "$HOME/.pyenv/shims/python"
vim.g.black_linelength = 120

vim.g.user_emmet_leader_key = ","
vim.g.user_emmet_install_global = 0
