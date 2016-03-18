private
nodeForSenderContextPC 
	^ (senderContext debuggerMap instVarNamed: #methodNode) sourceNodeForPC: senderContext pc - 1
		