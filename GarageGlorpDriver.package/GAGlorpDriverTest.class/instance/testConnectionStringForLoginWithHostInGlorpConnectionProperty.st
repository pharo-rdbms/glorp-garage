as yet unclassified
testConnectionStringForLoginWithHostInGlorpConnectionProperty

	| driver login connectionString |
	driver := GAGlorpDriver new.
	login := (Login new)
		database: MySQLPlatform new;
		port: '5432';
		host: 'localhost';
		connectString: '_sodbxtest'.
	connectionString := driver connectionStringForLogin: login.
	self assert: connectionString equals: 'mysql://localhost:5432/sodbxtest'