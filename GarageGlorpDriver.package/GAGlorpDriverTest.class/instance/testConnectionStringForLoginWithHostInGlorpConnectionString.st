as yet unclassified
testConnectionStringForLoginWithHostInGlorpConnectionString

	| driver login connectionString |
	driver := GAGlorpDriver new.
	login := (Login new)
		database: MySQLPlatform new;
		port: '5432';
		connectString: 'localhost_sodbxtest'.
	connectionString := driver connectionStringForLogin: login.
	self assert: connectionString equals: 'mysql://localhost:5432/sodbxtest'