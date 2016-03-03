console.log "hello world"

# -- SETTINGS

gameSettings =

	# set the width of one tile in pixels
	tileSize : 48
	# number of tiles on map
	mapX : 20
	mapY : 14

# -- INIT

ui = require('./init/ui.coffee')(gameSettings)

