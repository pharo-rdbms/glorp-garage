as yet unclassified
testConnectionStringForLoginWithoutPassword

	| driver login connectionString |
	driver := GAGlorpDriver new.
	login := (Login new)
		database: MySQLPlatform new;
		username: 'sodbxtest';
		port: '5432';
		host: 'localhost';
		connectString: 'localhost_sodbxtest'.
	connectionString := driver connectionStringForLogin: login.
	self assert: connectionString equals: 'mysql://localhost:5432/sodbxtest?user=sodbxtest'