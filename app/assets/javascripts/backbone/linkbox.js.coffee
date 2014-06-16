#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Linkbox =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: ->
    new Linkbox.Routers.ItemsRouter()

    Backbone.history.start(pushState: true)

$(document).ready ->
  Linkbox.init()
