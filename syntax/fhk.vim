if exists("b:current_syntax")
	finish
endif

syn keyword fhkKeyword macro model var map const where satisfies let in as and or
syn keyword fhkInf inf

" syn match fhkIdent  /[[:alpha:]_\~][[:alnum:]_\.\~]*/
syn match fhkIdentQ  /`\([^`]*\)`/
syn match fhkString  /"\([^"]*\)"/
syn match fhkCapture /\$[[:alpha:]_\~][[:alnum:]_\.\~]*/
syn match fhkDelim   /[\(\)\[\]\{\}#,]/
syn match fhkOper    /->/
syn match fhkOper    /\~/
syn match fhkOper    /\.\./
syn match fhkNum     /\<\(\([[:digit:]]\+\(\.[[:digit:]]*\)\?\)\|\(\.[[:digit:]]\+\)\)\([eE]-\?[[:digit:]\+]\)\?\>/
syn match fhkNum     /\<0x[a-fA-F]\+\>/

syn region fhkLineComment start=";" end="$"

hi def link fhkKeyword     Keyword
hi def link fhkIdentQ      Constant
hi def link fhkString      String
hi def link fhkCapture     Identifier
hi def link fhkDelim       Delimiter
hi def link fhkOper        Operator
hi def link fhkInf         Number
hi def link fhkNum         Number
hi def link fhkLineComment Comment

let b:current_syntax = "fhk"
