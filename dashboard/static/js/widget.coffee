class Widget
	constructor: (@elem, @refresh_time) ->
		this.update()

	setRefreshTime: (@refresh_time) ->

	update: ->

		# Set up the callback. This is a little complex,
		# but I haven't found a simpler way to do it.
		# Basically, we can't set up a call involving this
		# so we need an alias which will remain valid.
		# For some reason, we also can't use that alias
		# directly, so we set up a simple function to call
		# it.

		objRef = this
		setTimeout( (-> objRef.update() ), @refresh_time )

# Expose Widget so it can be used everywhere.
@Widget = Widget
