-- Tab spacing --
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


-- Tab linenumbers --
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.smartindent = true


-- line wrap --
vim.opt.wrap = false



-- undotree long backups --
vim.opt.swapfile = true
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Control search highlighting --
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Colors --
vim.opt.termguicolors = true

-- Lines gap when scrolling --
vim.opt.scrolloff = 8

-- Signed columns for plugins --
vim.opt.signcolumn = "yes"

vim.g.mapleader = " "
