" -----------------------------------------------------------------------------
iabbrev if if !cursor!; then<cr><+++><cr>fi<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if2 if !cursor!; then<cr><+++><cr>else<cr><+++><cr>fi<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if3 if !cursor!; then<cr><+++><cr>elif <+++>; then<cr><+++><cr>else<cr><+++><cr>fi<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev case case !cursor! in<cr>(<+++>\|<+++>\|<+++>) <+++>;;<cr>(<+++>\|<+++>\|<+++>) <+++>;;<cr>*) <+++>;;<cr>esac<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev select select !cursor! in <+++>; do<cr><+++><cr>done<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for for ((!cursor!; <+++>; <+++>)); do<cr><+++><cr>done<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for2 for !cursor! in <+++>; do<cr><+++><cr>done<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev while while !cursor!; do<cr><+++><cr>done<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev until until !cursor!; do<cr><+++><cr>done<Esc>:call search('!cursor!','b')<cr>cf!

" -----------------------------------------------------------------------------
iabbrev function function !cursor!(<+++>) {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
