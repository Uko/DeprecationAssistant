actions
executeAction
	
	
	(DiffModel new
		title: 'Apply the proposed changes?';
		showOptions: true;
		extent: 800@600;
		leftText: change oldVersionTextToDisplay;
		rightText: change textToDisplay;
		contextClass: change changeClass;
		openDialogWithSpec)
			okAction: [
				change execute.
				self session
					rewindContextToMethod: senderContext methodClass >> senderContext selector
					fromContext: senderContext ];
			centered;
			modalRelativeTo: self window.
		
	