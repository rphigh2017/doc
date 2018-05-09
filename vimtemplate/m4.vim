" -----------------------------------------------------------------------------
iabbrev if ifelse(!cursor!, <+ STRING-2 +>, <+ EQUAL +>)<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if2 ifelse(!cursor!, <+ STRING-2 +>, <+ EQUAL +>, <+ NOT-EQUAL +>)<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev if3 ifelse(!cursor!, <+ STRING-2 +>, <+ EQUAL-1 +>, <+ STRING-3 +>, <+ STRING-4 +>, <+ EQUAL-2 +>, <+ NOT-EQUAL +>)<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev for forloop(!cursor!, <+ FROM +>, <+ TO +>, <+ STMT +>)<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev m4_for define(`forloop', `pushdef(`$1', `$2')_forloop($@)popdef(`$1')')<cr>define(`_forloop', `$4`'ifelse($1, `$3', `', `define(`$1', incr($1))$0($@)')')
iabbrev for2 foreach(!cursor!, (<+ ITEM +>,<+++>,<+++>), <+ STMT +>)<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev m4_for2 define(`foreach', `pushdef(`$1')_foreach($@)popdef(`$1')')<cr>define(`_arg1', `$1')<cr>define(`_foreach', `ifelse(`$2', `()', `',`define(`$1', _arg1$2)$3`'$0(`$1', (shift$2), `$3')')')

" -----------------------------------------------------------------------------
iabbrev define define(`!cursor!', `<+++>')<Esc>:call search('!cursor!','b')<cr>cf!
iabbrev define2 define(`!cursor!', `<cr>pushdef(<+++>, $1)dnl<cr>pushdef(<+++>, $2)dnl<cr>pushdef(<+++>, $3)dnl<cr><+++><cr>popdef($1)dnl<cr>popdef($2)dnl<cr>popdef($3)')<Esc>:call search('!cursor!','b')<cr>cf!
