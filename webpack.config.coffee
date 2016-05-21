webpack = require 'webpack'

module.exports =
    entry: './source/coffee/app.coffee'
    output:
        path: './build/'
        filename: 'app.bundle.js'
    module:
      loaders: [
        { test: /\.coffee?$/, exclude: /node_modules/, loader: 'coffee-loader' }
      ]
    plugins: [
      new webpack.optimize.UglifyJsPlugin
        compress:
          warnings: false
        output:
          comments: false
    ]
