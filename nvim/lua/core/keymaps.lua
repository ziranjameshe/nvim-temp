-- set leader key to space
vim.g.mapleader = " "

-- for conciseness
local keymap = vim.keymap
local option = {noremap = true}

---------------------
-- General Key maps
---------------------

-- Modes
--   normal_mode       = "n",
--   insert_mode       = "i",
--   visual_mode       = "v",
--   visual_block_mode = "x",
--   term_mode         = "t",
--   command_mode      = "c",

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>",     option)

-- use control-a/e to jump to the beginning/end of the line
keymap.set("n", "<C-a>", "^",      option)
keymap.set("n", "<C-e>", "$",      option)
keymap.set("i", "<C-a>", "<ESC>I", option)
keymap.set("i", "<C-e>", "<ESC>A", option)
keymap.set("v", "<C-a>", "^",      option)
keymap.set("v", "<C-e>", "$",      option)

-- clear search highlights
keymap.set("n", "<leader>/", ":noh<CR>",         option)

-- File Saving
keymap.set("n", "<leader>s", ":update<cr>",      option)
keymap.set("v", "<leader>s", "<c-p>:update<cr>", option)

-- File Closing
keymap.set("n", "<leader>w", ":q<cr>",           option)
keymap.set("v", "<leader>w",  "<c-p>:q<cr>",     option)

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>",            option) -- increment
keymap.set("n", "<leader>_", "<C-x>",            option) -- decrement

-- Tab management
keymap.set("n", "<leader>c", ":tabnew<CR>",      option)
keymap.set("n", "<leader>x", ":tabclose<CR>",    option)
keymap.set("n", "<leader>n", ":tabn<CR>",        option)
keymap.set("n", "<leader>p", ":tabp<CR>",        option)

vim.cmd([[
    if !exists('g:Lasttab')
        let g:Lasttab = 1
        let g:Lasttab_backup = 1
    endif
    autocmd! TabLeave * let g:Lasttab_backup = g:Lasttab | let g:Lasttab = tabpagenr()
    autocmd! TabClosed * let g:Lasttab = g:Lasttab_backup
]])

keymap.set("n", "<leader>l", ":exe 'tabn ' . g:Lasttab<cr>", option)


vim.cmd([[
    for i in range(0, 20)
          exec 'nnoremap ' .. i .. ', ' .. i .. 'gt'
    endfor
]])


keymap.set("n", "<leader>0",  "0gt", option)
keymap.set("n", "<leader>1",  "1gt", option)
keymap.set("n", "<leader>2",  "2gt", option)
keymap.set("n", "<leader>3",  "3gt", option)
keymap.set("n", "<leader>4",  "4gt", option)
keymap.set("n", "<leader>5",  "5gt", option)
keymap.set("n", "<leader>6",  "6gt", option)
keymap.set("n", "<leader>7",  "7gt", option)
keymap.set("n", "<leader>8",  "8gt", option)
keymap.set("n", "<leader>9",  "9gt", option)

-- window management
keymap.set("n", "<leader>\\", "<C-w>v", option)     -- split window vertically
keymap.set("n", "<leader>-",  "<C-w>s", option)     -- split window horizontally
keymap.set("n", "<leader>=",  "<C-w>=", option)     -- make split windows equal width & height
keymap.set("n", "<leader>j",  "<C-w>+", option)     -- Increase window height
keymap.set("n", "<leader>k",  "<C-w>-", option)     -- Decrease window height
keymap.set("n", "<leader>l",  "<C-w>>", option)     -- Increase window width
keymap.set("n", "<leader>h",  "<C-w><", option)     -- Decrease window width

-- Navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>",     option)
keymap.set("n", "<S-h>", ":bprevious<CR>", option)

-- Indent code
keymap.set("v", "<", "<gv", option)
keymap.set("v", ">", ">gv", option)
