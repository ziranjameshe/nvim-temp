return {
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
}
