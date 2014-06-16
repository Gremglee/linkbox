class Linkbox.Views.ItemView extends Backbone.View

  events:
    "click" : 'select'

  item_template: JST["backbone/templates/item_template"]

  initialize: ->
    @listenTo(@model, "change", @render, @)
    return @render

  render: ->
    old_el = @el
    @setElement(@item_template(item: @model.toJSON()))
    $(old_el).replaceWith($(@el))
    @

  select: ->
    @model.toggle()
