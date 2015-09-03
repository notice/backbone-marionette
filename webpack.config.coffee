webpack = require 'webpack'

dirs = {
  src: './components'
}

module.exports = {
  webpack:
    entry:
      boot: dirs.src + '/boot.coffee'

    output:
      filename: '[name].js'

    module:
      loaders: [
        { test: /\.coffee$/, loader: 'coffee' }
        { test: /\.jade$/, loader: 'jade' }
      ]

    plugins: [
    ]

    resolve:
      alias:
        'underscore': 'lodash'
        'app': './app.coffee'
        'dashboard': './dashboard.coffee'
}
