private
schemaForLogin: aLogin

	| schema |
	schema := (self basicSchemaForLogin: aLogin) asSymbol.
	(self driverManager isAvailable: schema) ifTrue: [ ^ schema ].
	(self driverManager isAvailable: #opendbx) ifTrue: [ ^ #opendbx ].
	self error: 'no Garage driver is available for login: ', aLogin asString.