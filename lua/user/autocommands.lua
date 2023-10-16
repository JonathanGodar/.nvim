vim.cmd [[
" Autoformat on save 
autocmd BufWritePre * lua vim.lsp.buf.format()

" Make it so that return and O does not insert a comment
augroup NoAutoComment
  au!
  au FileType * setlocal formatoptions-=cro
augroup end

function! CarefullyDelCurrentBuf()
  update
  bdelete!
endfunction

command! BD call CarefullyDelCurrentBuf()

" automatically format on save
" autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()
]]
