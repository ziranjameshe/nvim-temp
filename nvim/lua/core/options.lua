local opt = vim.opt

-- line numbers
opt.number         = true
opt.numberwidth    = 4
opt.ruler          = true
opt.relativenumber = true
opt.scrolloff      = 8
opt.sidescrolloff  = 8
opt.signcolumn     = "yes"

-- tabs & indentation
opt.tabstop     = 4
opt.shiftwidth  = 4
opt.expandtab   = true
opt.autoindent  = true
opt.smartindent = true

-- line wrapping
opt.wrap       = true

-- search settings
opt.ignorecase = true
opt.smartcase  = true
opt.incsearch  = true
opt.hlsearch   = true

-- cursor line
opt.cursorline  = false
opt.virtualedit = "onemore"
-- appearance
opt.termguicolors = true
opt.background    = "dark"
opt.signcolumn    = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")
-- opt.clipboard = "unnamedplus"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- consider string-string as whole word
opt.iskeyword:append("-")

-- more space in the neovim command line for displaying messages
opt.cmdheight    = 1
-- so that `` is visible in markdown files
opt.conceallevel = 0
-- the encoding written to a file
opt.fileencoding = "utf-8"
-- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.writebackup  = false

-- allow the mouse to be used in neovim
opt.mouse        = "a"

-- pop up menu height
opt.pumheight    = 12

-- always show tabs
opt.showtabline  = 4

opt.shortmess:append("c")

-- Files
opt.updatetime   = 500
opt.autoread     = true
