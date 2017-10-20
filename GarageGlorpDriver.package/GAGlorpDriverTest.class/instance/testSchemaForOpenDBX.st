as yet unclassified
testSchemaForOpenDBX

	| driver login garageDriver |
	driver := GAGlorpDriver new.
	garageDriver := GAMockDriver withId: #opendbx.
	driver driverManager: (GADriverManager new subscribeDriver: garageDriver).
	login := Login new database: SQLite3Platform new.
	self assert: (driver schemaForLogin: login) equals: 'opendbx'.