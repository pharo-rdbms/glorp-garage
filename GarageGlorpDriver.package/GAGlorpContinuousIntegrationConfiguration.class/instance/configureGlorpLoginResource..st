private
configureGlorpLoginResource: aLogin

	GAGlorpDriver beGlorpDefaultDriver.
	GlorpDatabaseLoginResource current: nil.
	GlorpDatabaseLoginResource defaultLogin: aLogin