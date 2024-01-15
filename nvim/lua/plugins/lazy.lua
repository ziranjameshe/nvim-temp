local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "ayu-theme/ayu-vim",
        config = function()
            vim.cmd([[colorscheme ayu]])
        end,
    },
    -- tmux & split window navigation
    {
        "christoomey/vim-tmux-navigator",
        keys = {
            '<C-h>',
            '<C-j>',
            '<C-k>',
            '<C-h>',
        }
    },
    -- commenting with gc
    {
        "numToStr/Comment.nvim",
        keys = {
            "gcc",
            "gbc",
            "v",
            "<S-v>",
            "<C-v>",
        },
        config = function()
            require("Comment").setup()
        end,
    },
    -- Highlight Yanking
    {
        "machakann/vim-highlightedyank",
        config = function()
            vim.cmd([[highlight HighlightedyankRegion cterm=reverse gui=reverse]])
        end,
        keys = {
            "yy",
            "yw",
            "yb",
            "ye",
        }
    },
    -- Yank into tmux clipboard
    {
        "roxma/vim-tmux-clipboard",
    },
})
