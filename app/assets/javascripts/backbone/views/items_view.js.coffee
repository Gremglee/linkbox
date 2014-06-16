class Linkbox.Views.ItemsView extends Backbone.View

  el: ".list-group"

  initialize: ->
    @listenTo(@collection, 'sync', @render, @)
    @collection.fetch()

  render: ->
    console.log $(@el)
    for item in @collection.models
      item_view = new Linkbox.Views.ItemView(model: item)
      $(@el).append(item_view.render().el)
    @
