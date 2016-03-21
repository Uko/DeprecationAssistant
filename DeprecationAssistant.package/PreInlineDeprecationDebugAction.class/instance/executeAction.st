actions
executeAction

	self promptExecuteActionOnSuccess: [ 
	
		change execute.
		self session 
			resume;
			clear.
		
		window close ]