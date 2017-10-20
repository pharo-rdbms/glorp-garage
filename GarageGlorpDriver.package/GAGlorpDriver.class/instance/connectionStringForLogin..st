private
connectionStringForLogin: aLogin
	| schema host port database options |
	schema := self schemaForLogin: aLogin.
	host := aLogin host.
	port := aLogin port isEmptyOrNil
		ifTrue: ''
		ifFalse: [ ':' , aLogin port ].
	database := aLogin databaseName.
	schema = 'sqlite3'
		ifTrue: [ ^ schema , '://' , host , database ].
	options := OrderedCollection new.
	aLogin username isEmptyOrNil
		ifFalse: [ options add: 'user=' , aLogin username ].
	self addPasswordOf: aLogin to: options.
	schema = 'opendbx'
		ifTrue: [ options
				add: 'backend=' , (self basicSchemaForLogin: aLogin) ].
	^ schema , '://' , host , port , '/' , database
		, (options ifNotEmpty: [ '?' , (options joinUsing: '&') ])