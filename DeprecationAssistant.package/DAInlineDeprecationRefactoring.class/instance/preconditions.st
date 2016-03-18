preconditions
preconditions
	^ (RBCondition withBlock: 
					[
					self parseInlineMethod.
					self isPrimitive 
						ifTrue: [self refactoringError: 'Cannot inline primitives'].
					self noNondeprecationStatements ifTrue: 
						[self refactoringError: 'Method does not provide any code'].
					self checkSuperMessages.
					self rewriteInlinedTree.
					(sourceMessage parent isReturn or: [self hasMultipleReturns not]) 
						ifFalse: 
							[self 
								refactoringError: 'Cannot inline method since it contains multiple returns that cannot be rewritten'].
					true])