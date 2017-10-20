private
basicSchemaForLogin: aLogin

	aLogin platform isMySQLPlatform ifTrue: [ ^'mysql' ].
	aLogin platform isPostgreSQLPlatform ifTrue: [ ^ 'postgresV2' ].
	aLogin platform isSQLite3Platform ifTrue: [ ^ 'sqlite3' ].
	self error: 'The Garage Glorp driver does not yet support to connect to Glorp platform: ', aLogin platform class name