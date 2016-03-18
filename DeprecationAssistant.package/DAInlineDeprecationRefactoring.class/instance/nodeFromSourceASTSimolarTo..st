initialize-release
nodeFromSourceASTSimolarTo: aNode
	sourceParseTree nodesDo: [ :node |
		node = aNode ifTrue: [ ^ node ] ]