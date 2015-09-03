Marionette = require 'backbone.marionette'

Dashboard = new Marionette.Object()

Dashboard.controller = {
  home: ->
    app = require 'app'
    console.log 'home'
    app.navigate 'home'
    app.getRegion('content').show(new Dashboard.HomeView())
}

Dashboard.Router = Marionette.AppRouter.extend {
  controller: Dashboard.controller
  appRoutes:
    home: 'home'
}

Dashboard.on 'home', ->
  Dashboard.controller.home()

Dashboard.HomeView = Marionette.ItemView.extend {
  template: require './dashboard.home.jade'
  ui:
    next: '.next'
  events:
    'click @ui.next': 'next'
  next: ->
    console.log 'click next button'
}

module.exports = Dashboard
