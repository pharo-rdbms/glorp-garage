as yet unclassified
testConnectionStringForLoginWithoutPortHasDefaultPort5432

	| driver login connectionString |
	driver := GAGlorpDriver new.
	login := (Login new)
		database: MySQLPlatform new;
		username: 'sodbxtest';
		password: 'sodbxtest';
		host: 'localhost';
		connectString: 'localhost_sodbxtest'.
	connectionString := driver connectionStringForLogin: login.
	self assert: connectionString equals: 'mysql://localhost:5432/sodbxtest?user=sodbxtest&password=sodbxtest'