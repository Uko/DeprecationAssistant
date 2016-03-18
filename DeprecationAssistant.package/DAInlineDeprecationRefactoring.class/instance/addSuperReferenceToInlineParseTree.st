transforming
addSuperReferenceToInlineParseTree
	| rewriter |
	rewriter := RBParseTreeRewriter
		rename: 'super'
		to: inlineClass superclass theNonMetaClass name.
	(rewriter executeTree: inlineParseTree) 
		ifTrue: [inlineParseTree := rewriter tree]