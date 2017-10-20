configuration
configureSqlite3

	self configureGlorpLoginResource: (Login new
		database: SQLite3Platform new;
		host: SmalltalkImage current imagePath asFileReference parent fullName, FileSystem disk delimiter asString;
		port: '';
		username: '';
		password: '';
		databaseName: 'sodbxtest.db')