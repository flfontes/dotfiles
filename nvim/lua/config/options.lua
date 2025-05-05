-- Options related to tabs
vim.opt.expandtab = true -- Converts tabs to spaces
vim.opt.shiftwidth = 4 -- Number of indent spaces
vim.opt.tabstop = 4 -- Number of spaces shown per Tab
vim.opt.softtabstop = 4 -- Number of spaces applied with Tab

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true -- Keep indentation from previous line
vim.opt.breakindent = true -- Enables break indent

-- Options related to line numbers
vim.opt.number = true -- Shows line numbers
vim.opt.relativenumber = true -- Shows line numbers relative to current line

-- Options related to cursor
vim.opt.cursorline = true -- Shades line of the cursos
vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor

-- Options related to undos
vim.opt.undofile = true -- Stores undos between sessions

-- Options related to mouse
-- vim.opt.mouse = 'a' -- Enables mouse mode

-- Options related to statusline
vim.opt.showmode = false -- Already part of statusline plugin

-- Options related to search case
vim.opt.ignorecase = true
vim.opt.smartcase = true -- Makes searches case-insensitive unless 1+ capital letter is present in the search

-- Options related to signcolumn
vim.opt.signcolumn = "yes" -- Enables signcolumn next to number line column

-- Options concerning splits
vim.opt.splitright = true -- Makes new split in vsplits appear on the right
vim.opt.splitbelow = true -- Makes new split in hsplits appear on the bottom

-- Options concerning white space
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Options concerning Nerd fonts
vim.g.have_nerd_font = true
