class Widget
	constructor: (@elem, @refresh_time) ->
		this.update()

	setRefreshTime: (@refresh_time) ->

	update: ->
		console.log this
		this.update_icon()
		this.update_title()
		this.update_info()
		this.update_panel()

		# Set up the callback. This is a little complex,
		# but I haven't found a simpler way to do it.
		# Basically, we can't set up a call involving this
		# so we need an alias which will remain valid.
		# For some reason, we also can't use that alias
		# directly, so we set up a simple function to call
		# it.

		objRef = this
		setTimeout( (-> objRef.update() ), @refresh_time )

	update_icon: ->
		console.log this + "Updating Icon..."

	update_title: ->
		console.log "Updating Title..."

	update_info: ->
		console.log "Updating Information..."

	update_panel: ->
		console.log "Updating Panel..."

widget0 = new Widget( $('.nextbus')[0], 15000 )
widget0.setRefreshTime( 5000 )
