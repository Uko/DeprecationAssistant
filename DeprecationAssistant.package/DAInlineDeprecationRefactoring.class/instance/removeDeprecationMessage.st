transforming
removeDeprecationMessage
	| deprecationStatments |

	deprecationStatments := inlineParseTree statements
		select: [ :statement |
			statement isReturn not and: [
			#(deprecated: deprecated:on:in:) includes: statement selector ] ].
	
	deprecationStatments do: [ :statement |
		inlineParseTree body removeNode: statement ]
