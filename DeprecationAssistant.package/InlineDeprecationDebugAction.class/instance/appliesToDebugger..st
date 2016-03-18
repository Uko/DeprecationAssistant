testing
appliesToDebugger: aDebugger

	| deprecatedContext |

	(#(deprecated: deprecated:on:in:)
		includes: aDebugger interruptedContext selector)
			ifFalse: [ ^ false ].

	deprecatedContext := aDebugger interruptedContext sender.
	senderContext := deprecatedContext sender.

	[ change := (DAInlineDeprecationRefactoring
		inline: self nodeForSenderContextPC 
		from: deprecatedContext methodClass)
			primitiveExecute changes changes first. ]
	
		on: Error
		do: [ :e | 
			Transcript cr; crShow: e.
			^ false ].
		
	^ true