class Linkbox.Routers.ItemsRouter extends Backbone.Router

  routes:
    'items': 'index'

  initialize: ->
    console.log 'aaa'

  index: ->
    console.log 'asdf'
    items = new Linkbox.Views.ItemsView(collection: new Linkbox.Collections.Items)
