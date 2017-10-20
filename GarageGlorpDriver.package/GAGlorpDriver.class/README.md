I am a Glorp driver that interfaces against Garage drivers. In such way, this driver allows glorp to use multiple databases with the same API.

My glorp-API protocol contains methods that forward messages to the garage driver.
My private protocol contains methods that convert glorp Login objects into garage connection strings.

I am configurable with a driver manager to be able to check which is the best driver to use depending on the installed drivers.