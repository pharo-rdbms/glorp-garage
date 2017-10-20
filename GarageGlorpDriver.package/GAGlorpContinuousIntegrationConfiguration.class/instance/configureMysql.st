configuration
configureMysql

	self configureGlorpLoginResource: (Login new
		database: MySQLPlatform new;
		host: 'localhost';
		port: '3306';
		databaseName: 'sodbxtestglorp';
		username: 'sodbxtest';
		password: 'sodbxtest')