transforming
checkSuperMessages
	(inlineClass isMeta or: [ inlineParseTree superMessages isEmpty ])
		ifFalse: 
			[self 
				refactoringError: 'Cannot inline method since it sends a super message']