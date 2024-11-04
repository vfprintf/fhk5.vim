if exists("b:current_syntax")
	finish
endif

syn keyword fhkKeyword not call macro model table func where out let in
syn keyword fhkBool true false
syn keyword fhkInf inf

" syn match fhkIdent  /[[:alpha:]_\~][[:alnum:]_\.\~]*/
syn match fhkThis    /\$\$/
syn match fhkIdentQ  /`\([^`]*\)`/
syn match fhkString  /"\([^"]*\)"/
syn match fhkCapture /\$[[:alpha:]_\~][[:alnum:]_\.\~]*/
syn match fhkDelim   /[\(\)\[\]\{\}:,]/
syn match fhkNum     /\<\(\([[:digit:]]\+\(\.[[:digit:]]*\)\?\)\|\(\.[[:digit:]]\+\)\)\([eE]-\?[[:digit:]\+]\)\?\>/
syn match fhkNum     /\<0x[a-fA-F]\+\>/

syn region fhkLineComment start="#" end="$"

hi def link fhkKeyword     Keyword
hi def link fhkThis        Constant
hi def link fhkIdentQ      Constant
hi def link fhkString      String
hi def link fhkCapture     Identifier
hi def link fhkDelim       Delimiter
hi def link fhkInf         Number
hi def link fhkBool        Boolean
hi def link fhkNum         Number
hi def link fhkLineComment Comment

let b:current_syntax = "fhk"
