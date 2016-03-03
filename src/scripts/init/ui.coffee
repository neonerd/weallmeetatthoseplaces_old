###

Inits the game UI.

###

module.exports = (renderSettings) ->

	console.log "-- CREATING UI"

	mainEl = document.getElementById('main')

	gameEl = document.createElement('div')
	gameEl.className = "game"
	mainEl.appendChild(gameEl)

	mapEl = document.createElement('div')
	mapEl.className = "map"
	mapEl.id = "map"
	mapEl.style.width = renderSettings.tileSize * renderSettings.mapX + 'px'
	mapEl.style.height = renderSettings.tileSize * renderSettings.mapY + 'px'
	gameEl.appendChild(mapEl)

	return {
		elements : {
			game : gameEl
			map : mapEl
		}
	}