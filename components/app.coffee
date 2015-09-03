Marionette = require 'backbone.marionette'

Dashboard = require 'dashboard'
new Dashboard.Router

App = Marionette.Application.extend

  onStart: ->
    console.log 'app.onStart'
    Backbone.history.start()
    Dashboard.trigger 'home' if Backbone.history.fragment is ''

  navigate: (route, options) ->
    options = options || {}
    Backbone.history.navigate(route, options)

app = new App {
  navigate: (route, options) ->
    options = options || {}
    Backbone.history.navigate(route, options)
}
app.addRegions content: '#content'
module.exports = app
