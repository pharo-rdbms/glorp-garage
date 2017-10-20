glorp-API
connect: aLogin

	^ connection := GADriver connectToConnectionString: (self connectionStringForLogin: aLogin)