actions
executeAction
	
	
	self promptExecuteActionOnSuccess: [ 
				change execute.
				self session
					rewindContextToMethod: senderContext methodClass >> senderContext selector
					fromContext: senderContext ]
		
	