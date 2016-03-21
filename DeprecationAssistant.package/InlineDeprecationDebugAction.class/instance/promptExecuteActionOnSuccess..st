actions
promptExecuteActionOnSuccess: aBlock
	
	
	(DiffModel new
		title: 'Apply the proposed changes?';
		showOptions: true;
		extent: 800@600;
		leftText: change oldVersionTextToDisplay;
		rightText: change textToDisplay;
		contextClass: change changeClass;
		openDialogWithSpec)
			okAction: aBlock;
			centered;
			modalRelativeTo: self window.
		
	