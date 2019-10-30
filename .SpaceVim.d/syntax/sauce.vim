let b:current_syntax = "sauce" 

syn match   sauceComment "#.*$"
syn keyword sauceInstruction struct prop type kind flags tags values
syn keyword sauceStructKind api record enum state store repo service
syn keyword saucePropType string bool date int float double decimal money timezone atom tuple union intersection function

hi def link sauceComment Comment
hi def link sauceInstruction Function
hi def link sauceStructKind Constant
hi def link saucePropType Type

