gt-debugger
gtStackDebuggingActionFor: aDebugger
	<gtStackDebuggingAction>
	
	^ (self forDebugger: aDebugger)
			icon: (Smalltalk ui theme icons iconNamed: #repair);
			order: 1