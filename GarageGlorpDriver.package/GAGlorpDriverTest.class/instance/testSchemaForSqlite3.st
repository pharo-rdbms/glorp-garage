as yet unclassified
testSchemaForSqlite3

	| driver login |
	driver := GAGlorpDriver new.
	login := Login new database: SQLite3Platform new.
	self assert: (driver schemaForLogin: login) equals: 'sqlite3'.