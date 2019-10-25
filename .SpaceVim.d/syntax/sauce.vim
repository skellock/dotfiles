let b:current_syntax = "sauce" 

syn keyword sauceTopLevelKeyword STRUCT PROP struct prop
syn match   sauceComment "#.*$"
syn keyword sauceKeyword TYPE type KIND kind FLAGS flags TAGS tags


hi def link sauceTopLevelKeyword Function
hi def link sauceComment Comment
hi def link sauceKeyword Keyword

