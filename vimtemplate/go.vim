" -----------------------------------------------------------------------------
iabbrev if if !cursor! {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if1 if !cursor! := <+++>; <+++> {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if2 if !cursor! {<cr><+++><cr>} else {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if3 if !cursor! {<cr><+++><cr>} else if <+++> {<cr><+++><cr>} else {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev switch switch !cursor! {<cr>case <+++>:<cr><+++><cr>case <+++>:<cr><+++><cr>case <+++>:<cr><+++><cr>default:<cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev switch2 switch !cursor! := <+++>.(type) {<cr>case <+++>:<cr><+++><cr>case <+++>:<cr><+++><cr>case <+++>:<cr><+++><cr>default:<cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev select select {<cr>case !cursor!, ok = <-<+++>:<cr><+++><cr>case <+++> <- <+++>:<cr><+++><cr>default:<cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for for !cursor!; <+++>; <+++> {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for2 for !cursor!, <+++> := range <+++> {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for3 for !cursor! {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!

" -----------------------------------------------------------------------------
iabbrev type type !cursor! struct {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev type2 type !cursor! interface {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev enum const {<cr><+++> = iota<cr><+++><cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev func func !cursor!(<+++>) <+++> {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev func2 func (this !cursor!) <+++>(<+++>) <+++> {<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!

" -----------------------------------------------------------------------------
iabbrev import import (<cr>"!cursor!"<cr>"<+++>"<cr>"<+++>"<cr>)<Esc>:call search('!cursor!','b')<cr>cf!
