if exists("b:current_syntax")
	finish
endif

syn keyword fhkKeyword macro model var map query const where satisfies let in as and or
syn keyword fhkInf inf

" syn match fhkIdent  /[[:alpha:]_\~][[:alnum:]_\.\~]*/
syn match fhkLiteral /`\([^`]*\)`/
syn match fhkCapture /\$[[:alpha:]_\~][[:alnum:]_\.\~]*/
syn match fhkDelim   /[\(\)\[\]\{\}#,]/
syn match fhkOper    /->/
syn match fhkOper    /:/
syn match fhkOper    /\.\./
syn match fhkNum     /\<\(\([[:digit:]]\+\(\.[[:digit:]]*\)\?\)\|\(\.[[:digit:]]\+\)\)\([eE]-\?[[:digit:]\+]\)\?\>/
syn match fhkNum     /\<0x[a-fA-F]\+\>/

syn region fhkLineComment start="//" end="$"

hi def link fhkKeyword     Keyword
hi def link fhkLiteral     Constant
hi def link fhkCapture     Identifier
hi def link fhkDelim       Delimiter
hi def link fhkOper        Operator
hi def link fhkInf         Number
hi def link fhkNum         Number
hi def link fhkLineComment Comment
hi def link fhkPragma      SpecialComment

let b:current_syntax = "fhk"
