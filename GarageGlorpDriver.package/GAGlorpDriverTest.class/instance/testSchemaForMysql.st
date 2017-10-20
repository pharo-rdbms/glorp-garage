as yet unclassified
testSchemaForMysql

	| driver login |
	driver := GAGlorpDriver new.
	login := Login new database: MySQLPlatform new.
	self assert: (driver schemaForLogin: login) equals: 'mysql'.