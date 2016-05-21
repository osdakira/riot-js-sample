webpack = require 'webpack'

module.exports =
    entry: './source/javascripts/app.js'
    output:
        path: './build/'
        filename: 'app.bundle.js'
