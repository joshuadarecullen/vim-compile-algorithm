" Guard against multiple loading
if exists('g:loaded_complilealgorithm')
  finish
endif
let g:loaded_complilealgorithm = 1

" Command to run files
command! RunFile call RunCurrentFile()

" Keybinding to run the current file
nnoremap <leader>r :RunFile<CR>
