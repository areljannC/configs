-- enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- enable syntax highlighting and colors
vim.opt.termguicolors = true

-- enable smart indenting
vim.opt.smartindent = true

-- disable wordwrap
vim.opt.wrap = false

-- enable mouse support
vim.opt.mouse = "a"

-- disable swap files (use undo history instead)
vim.opt.swapfile = false
vim.opt.undofile = true

-- enable incremental search with highlighting
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- better scrolling
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4

-- reduce update time for responsiveness
vim.opt.updatetime = 250
vim.opt.timeoutlen = 400

-- enable persistent undo history??

-- auto-update file when changed externally
vim.opt.autoread = true

-- highlight the current cursor line
vim.opt.cursorline = true

-- set tab width
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- display whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = ">> ", space = " ", trail = "." }
