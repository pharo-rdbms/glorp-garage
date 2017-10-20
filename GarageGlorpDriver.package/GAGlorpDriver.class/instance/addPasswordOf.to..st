private
addPasswordOf: aLogin to: options
	aLogin secure
		ifTrue:
			[ | secure |
			secure := aLogin secure.
			[ aLogin secure: false.
			aLogin password isEmptyOrNil
				ifFalse: [ options add: 'password=' , aLogin password ] ]
				ensure: [ aLogin secure: secure ] ]
		ifFalse: [ 
			aLogin password isEmptyOrNil
				ifFalse: [ options add: 'password=' , aLogin password ]
			]