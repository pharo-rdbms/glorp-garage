as yet unclassified
testConnectionStringForCompleteLogin

	| driver login connectionString |
	driver := GAGlorpDriver new.
	login := (Login new)
		database: MySQLPlatform new;
		username: 'sodbxtest';
		password: 'sodbxtest';
		host: 'localhost';
      port: '3306';
		connectString: 'localhost_sodbxtest'.
	connectionString := driver connectionStringForLogin: login.
	self assert: connectionString equals: 'mysql://localhost:3306/sodbxtest?user=sodbxtest&password=sodbxtest'