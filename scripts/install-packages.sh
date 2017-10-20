./pharo Pharo.image eval "
Metacello new 
	baseline: 'Garage';
	repository: 'github://pharo-rdbms/garage';
	load: '${1}'.
Metacello new 
    baseline: 'Glorp';
    repository: 'github://pharo-rdbms/glorp';
    load.
Metacello new 
	baseline: 'GarageGlorp';
	repository: 'filetree://.';
	load.
Smalltalk snapshot: true andQuit: true.
"