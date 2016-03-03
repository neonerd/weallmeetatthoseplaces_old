###

Renders the map according to the passed structure.

###

module.exports = (structure, mapEl, gameSettings) ->

	if(!structure.architecture?)
		throw new Error("render:map -> Missing architecture!")

	if(!structure.entities?)
		throw new Error("render:entities -> Missing entities!")

	
	