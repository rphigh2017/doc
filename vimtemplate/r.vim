" -----------------------------------------------------------------------------
iabbrev if if (!cursor!) {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if2 if (!cursor!) {<cr><+++><cr>} else {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if3 if (!cursor!) {<cr><+++><cr>} else if (<+++>) {<cr><+++><cr>} else {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev switch switch (!cursor!,<cr><+++>,<cr><+++>,<cr><+++>)<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for for (!cursor! in seq(<+++>,<+++>,<+++>)) {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for2 for (!cursor! in <+++>) {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev while while (!cursor!) {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev repeat repeat {!cursor!}<Esc>:call search('!cursor!','b')<cr>cf!

" -----------------------------------------------------------------------------
iabbrev function function !cursor!(<+++>) {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
