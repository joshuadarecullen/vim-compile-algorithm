" Guard against multiple loading
if exists('g:loaded_complile-algorithm')
  finish
endif
let g:loaded_complile-algorithm = 1

" Command to run files
command! RunFile call RunCurrentFile()

" Keybinding to run the current file
nnoremap <leader>r :RunFile<CR>
