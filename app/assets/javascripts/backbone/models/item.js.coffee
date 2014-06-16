class Linkbox.Models.Item extends Backbone.Model

  defaults:
    active: false

  toggle: ->
    if @get('active')
      @set(active: false)
    else
      @set(active: true)
