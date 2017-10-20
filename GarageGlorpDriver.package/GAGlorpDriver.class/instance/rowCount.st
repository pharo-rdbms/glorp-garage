glorp-API
rowCount

	lastResult isResultSet ifTrue: [ ^ lastResult rows size ].
	^lastResult affectedRows