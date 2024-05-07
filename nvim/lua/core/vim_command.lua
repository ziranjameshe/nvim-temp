-- Restore cursor shape in bash after exiting neovim
vim.cmd([[
    augroup RestoreCursorShapeOnExit
        autocmd!
        autocmd VimLeave * set guicursor=v-c-sm:block,n-i-ci-ve:ver25,r-cr-o:hor20
    augroup END
]])

-- Setup tab-line colours
vim.cmd([[
    hi TabLineSel  gui=NONE guibg=#3e4452 guifg=#abb2bf cterm=bold term=NONE ctermfg=lightgreen
    hi TabLine     gui=NONE guibg=#3e4452 guifg=#abb2bf cterm=bold term=NONE ctermfg=white 
]])

vim.api.nvim_exec([[
    function! Trim()
        let l:save = winsaveview()
        keeppatterns %s/\s\+$//e
        call winrestview(l:save)
    endfun

    command! -nargs=0 Trim call Trim()
]], false)

-- Highlight unnecessary white spaces
vim.cmd("match errorMsg /\\s\\+$/")

vim.cmd([[
    cabbrev t tabnew
]])
