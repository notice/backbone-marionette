webpack = require 'webpack'

dirs = {
  src: './components'
}

module.exports = {
  webpack:
    entry:
      boot: dirs.src + '/boot.js'

    output:
      filename: '[name].js'

    module:
      loaders: [
        { test: /\.js$/, exclude: /node_modules/, loader: 'babel'}
        { test: /\.jade$/, loader: 'jade' }
      ]

    plugins: [
    ]

    resolve:
      alias:
        'underscore': 'lodash'
        'app': './app.js'
        'dashboard': './dashboard.js'
}
