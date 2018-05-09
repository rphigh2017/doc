" -----------------------------------------------------------------------------
iabbrev if if !cursor!:<cr><+++><Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if2 if !cursor!:<cr><+++><cr>else:<cr><+++><Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if3 if !cursor!:<cr><+++><cr>elif <+++>:<cr><+++><cr>else:<cr><+++><Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for for !cursor! in range(<+++>;<+++>;<+++>):<cr><+++><Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for2 for !cursor!,<+++> in enumerate(<+++>):<cr><+++><Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for3 for !cursor!,<+++> in <+++>:<cr><+++><cr>else:<cr><+++><Esc>:call search('!cursor!','b')<cr>cf!
iabbrev while while !cursor!:<cr><+++><cr>else:<cr><+++><Esc>:call search('!cursor!','b')<cr>cf!

" -----------------------------------------------------------------------------
iabbrev try try:<cr>!cursor!<cr>except <+++>:<cr><+++><cr>else:<cr><+++><Esc>:call search('!cursor!','b')<cr>cf!
iabbrev class class !cursor!(<+++>):<cr><+++><Esc>:call search('!cursor!','b')<cr>cf!
