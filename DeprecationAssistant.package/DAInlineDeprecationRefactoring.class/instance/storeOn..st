printing
storeOn: aStream 
	aStream nextPut: $(.
	self class storeOn: aStream.
	aStream nextPutAll: ' inline: '.
	sourceMessage storeOn: aStream.
	aStream
		nextPutAll: ' inMethod: #';
		nextPutAll: sourceSelector;
		nextPutAll: ' forClass: '.
	class storeOn: aStream.
	aStream nextPut: $)