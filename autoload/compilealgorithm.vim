function! RunCurrentFile()
    " Get the filetype and determine the command
    let l:filetype = &filetype
    let l:cmd = ""

    if l:filetype ==# "python"
        let l:cmd = "python3 " . shellescape(expand('%'))
    elseif l:filetype ==# "sh"
        let l:cmd = "bash " . shellescape(expand('%'))
    elseif l:filetype ==# "javascript"
        let l:cmd = "node " . shellescape(expand('%'))
    elseif l:filetype ==# "c"
        let l:cmd = "gcc " . shellescape(expand('%')) . " -o output && ./output"
    elseif l:filetype ==# "cpp"
        let l:cmd = "g++ " . shellescape(expand('%')) . " -o output && ./output"
    else
        echo "No run command defined for " . l:filetype
        return
    endif

    " Open a new split window for output
    botright vnew | setlocal buftype=nofile bufhidden=wipe noswapfile

    " Run the command and display results
    execute "terminal " . l:cmd
endfunction
