configuration
configurePostgresql

	self configureGlorpLoginResource: (Login new
		database: PostgreSQLPlatform new;
		host: 'localhost';
		port: '5432';
		databaseName: 'sodbxtestglorp';
		username: 'sodbxtest';
		password: 'sodbxtest')