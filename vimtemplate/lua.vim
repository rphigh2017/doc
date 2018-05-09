" -----------------------------------------------------------------------------
iabbrev if if !cursor! then<cr><+++><cr>end<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if2 if !cursor! then<cr><+++><cr>else<cr><+++><cr>end<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if3 if !cursor! then<cr><+++><cr>elseif <+++> then<cr><+++><cr>else<cr><+++><cr>end<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for for !cursor! = <+++>; <+++>; <+++> do<cr><+++><cr>end<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for2 for !cursor!, <+++> in pairs(<+++>) do<cr><+++><cr>end<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for3 for !cursor!, <+++> in ipairs(<+++>) do<cr><+++><cr>end<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev repeat repeat<cr>!cursor!<cr>until <+++><Esc>:call search('!cursor!','b')<cr>cf!
iabbrev while while !cursor! do<cr><+++><cr>end<Esc>:call search('!cursor!','b')<cr>cf!

" -----------------------------------------------------------------------------
iabbrev class local !cursor! = {<cr>name = <+++>,<cr>}<cr>function <+++>:new(l)<cr><Tab>l = l or {}<cr>setmetatable(l, self)<cr>self.__index = self<cr>return l<cr>end<cr>function <+++>:del()<cr><Tab><+++><cr>end<Esc>:call search('!cursor!','b')<cr>cf!

" -----------------------------------------------------------------------------
iabbrev function function !cursor!(<+++>)<cr><Tab><+++><cr>end<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev function2 function !cursor!:<+++>(<+++>)<cr><Tab><+++><cr>end<Esc>:call search('!cursor!','b')<cr>cf!
