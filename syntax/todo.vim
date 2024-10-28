set iskeyword+=-

syntax region TaskBlock keepend start=/^\s*- (/ms=e end=/)/
      \ contains=TaskBlockEnds,TaskWord

syntax match TaskBlockEnds  /(\|)/
      \ containedin=TaskBlock
      \ contained

syntax region TaskWord keepend start=/\</ end=/\>/
      \ containedin=TaskBlock
      \ contained
      \ contains=TaskDate,TaskStatusTodo,TaskStatusDone,TaskStatusCanceled

syntax match TaskDate /\<2\d\d\d[-][0-1]\d[-][0-3]\d\>/
      \ containedin=TaskWord
      \ contained

syntax keyword TaskStatusTodo todo
      \ containedin=TaskWord
      \ contained

syntax keyword TaskStatusDone done
      \ containedin=TaskWord
      \ contained

syntax keyword TaskStatusCanceled canceled
      \ containedin=TaskWord
      \ contained

highlight! default TaskBlockEnds      guifg=lightgray
highlight! default TaskWord           guifg=blue
highlight! default TaskDate           guifg=magenta
highlight! default TaskStatusTodo     guifg=red
highlight! default TaskStatusDone     guifg=green
highlight! default TaskStatusCanceled guifg=brown
