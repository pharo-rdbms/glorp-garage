as yet unclassified
testSchemaForPostgresql

	| driver login |
	driver := GAGlorpDriver new.
	login := Login new database: PostgreSQLPlatform new.
	self assert: (driver schemaForLogin: login) equals: 'postgresV2'.