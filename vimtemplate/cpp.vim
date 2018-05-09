" -----------------------------------------------------------------------------
iabbrev if if (!cursor!) {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if1 if (!cursor! = <+++>) {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if2 if (!cursor!) {<cr><+++><cr>} else {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if3 if (!cursor!) {<cr><+++><cr>} else if (<+++>) {<cr><+++><cr>} else {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev switch switch (!cursor!) {<cr>case <+++>:<Esc>14h4x$a<cr><+++>;<cr>break;<cr>case <+++>:<cr><+++>;<cr>break;<cr>case <+++>:<cr><+++>;<cr>break;<cr>default:<cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for for (!cursor!; <+++>; <+++>) {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev do do {<cr>!cursor!<cr>} while (<+++>);<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev while while (!cursor!) {<cr><+++><cr>};<Esc>:call search('!cursor!','b')<cr>cf!

" -----------------------------------------------------------------------------
iabbrev class class !cursor! {<cr>public:<Esc>10h4x$a<cr><+++>() {<cr>}<cr>~<+++>() {<cr>}<cr>};<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev struct struct !cursor! {<cr><+++><cr>};<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev enum enum !cursor! {<cr><+++>=<+++>,<cr><+++>=<+++>,<cr><+++>=<+++>,<cr>};<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev union union !cursor! {<cr><+++>;<cr><+++>;<cr><+++>;<cr>};<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev template template <class !cursor!><Esc>:call search('!cursor!','b')<cr>cf!

" -----------------------------------------------------------------------------
iabbrev using using namespace !cursor!;<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev try try {<cr>!cursor!<cr>} catch (std::exception &e) {<cr><+++><cr>} catch (...) {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
