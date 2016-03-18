initialize-release
inline: messageNode from: aClass
	class := self classObjectFor: messageNode methodNode methodClass.
	sourceParseTree := messageNode methodNode copyInContext: Dictionary new.
	sourceMessage := self nodeFromSourceASTSimolarTo:  messageNode.
	sourceSelector := sourceMessage selector.
	inlineClass := aClass.
	
	self assert: (inlineClass includesSelector: sourceSelector)