import Marionette from 'backbone.marionette';
import app from 'app';

var Dashboard = new Marionette.Object();

Dashboard.controller = {
  home: () => {
    console.log('home');
    app.navigate('home');
    app.getRegion('content').show(new Dashboard.HomeView());
  }
}

Dashboard.Router = Marionette.AppRouter.extend({
  controller: Dashboard.controller,
  appRoutes: {
    home: 'home'
  }
});

Dashboard.on('home', () => {
  Dashboard.controller.home();
});

import tmpl from './dashboard.home.jade';

Dashboard.HomeView = Marionette.ItemView.extend({
  template: tmpl,
  ui: {
    next: '.next'
  },
  events: {
    'click @ui.next': 'next'
  },
  next: () => {
    console.log('click next button');
  }
});

export default Dashboard;
