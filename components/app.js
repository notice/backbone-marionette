import Marionette from 'backbone.marionette';
import Dashboard from 'dashboard';

new Dashboard.Router();

var App = Marionette.Application.extend({

  onStart: () => {
    console.log('app.onStart');
    Backbone.history.start();
    if (Backbone.history.fragment === '') {
      Dashboard.trigger('home');
    }
  },

  navigate: (route, options) => {
    options = options || {};
    Backbone.history.navigate(route, options);
  }
});

var app = new App();
app.addRegions({content: '#content'});

export default app;
