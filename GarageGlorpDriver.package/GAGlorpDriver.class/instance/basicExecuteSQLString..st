glorp-API
basicExecuteSQLString: aString

	lastResult := connection execute: aString.
	lastResult isResultSet ifTrue: [ ^ lastResult rows readStream ].
	^ #() readStream