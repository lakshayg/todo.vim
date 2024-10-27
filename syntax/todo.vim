
syntax region TaskBlock keepend start=+\s*- (+ end=+)+
      \ contains=TaskStatusTodo,TaskStatusDone,TaskStatusCanceled,TaskBlockEnds

syntax match TaskBlockEnds    contained /(\|)/
syntax keyword TaskStatusTodo contained todo
syntax keyword TaskStatusDone contained done
syntax keyword TaskStatusCanceled contained canceled

highlight! default TaskBlockEnds  guifg=lightgray
highlight! default TaskStatusTodo guifg=red
highlight! default TaskStatusDone guifg=green
highlight! default TaskStatusCanceled guifg=orange
