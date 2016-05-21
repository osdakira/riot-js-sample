webpack = require 'webpack'

module.exports =
    entry: './source/coffee/app.coffee'
    output:
        path: './build/'
        filename: 'app.bundle.js'
    module:
      preLoaders: [
        { test: /\.tag$/, exclude: /node_modules/, loader: 'riotjs-loader', query: { type: 'none' } }
      ],
      loaders: [
        { test: /\.coffee?$/, exclude: /node_modules/, loader: 'coffee-loader' }
      ]
    plugins: [
      new webpack.optimize.UglifyJsPlugin
        compress:
          warnings: false
        output:
          comments: false
      ,
      new webpack.ProvidePlugin
        riot: 'riot'
    ]
