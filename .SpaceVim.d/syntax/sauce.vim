let b:current_syntax = "sauce" 

syn match   sauceComment "#.*$"
syn keyword sauceInstruction struct prop type kind flags tags values value default
syn match   sauceEndpointPath /\v[a-zA-Z0-9:_/]*/ contained
syn keyword saucePathKeyword path contained
syn region  sauceEndpointPathRegion start=/\v^\s*path\s/ end=/\v$/ contains=sauceEndpointPath,saucePathKeyword keepend transparent
syn keyword sauceApiInstruction api endpoint param path get post put patch delete qsv formdata response returns from as
syn keyword sauceStructKind api record enum state store repo service
syn keyword saucePropType string bool date int float double decimal money timezone atom tuple union intersection function
syn match   sauceQuestion "?"
syn match   sauceForwardSlash "/"
syn match   sauceColon "\:"
syn match   sauceOpenBracket "\["
syn match   sauceCloseBracket "\]"

hi def link sauceComment Comment
hi def link sauceInstruction Function
hi def link saucePathKeyword Function
hi def link sauceApiInstruction Function
hi def link sauceStructKind Constant
hi def link saucePropType Type
hi def link sauceQuestion Number
hi def link sauceForwardSlash Number
hi def link sauceColon Number
hi def link sauceOpenBracket Number
hi def link sauceCloseBracket Number
hi def link sauceEndpointPath Identifier

