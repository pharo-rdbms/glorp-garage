glorp-API
basicExecuteSQLString: aString binding: aBindingArray

	| preparedStatement |
	preparedStatement := connection prepare: aString.
	aBindingArray doWithIndex: [ :arg :i|  preparedStatement at: i bind: arg].
	lastResult := preparedStatement execute.
	lastResult isResultSet ifTrue: [ ^ lastResult rows readStream ].
	^ #() readStream