module.exports =
  files:
    javascripts: { joinTo: 'app.js'  }
    stylesheets: { joinTo: 'app.css' }
    templates:   { joinTo: 'app.js'  }
  plugins:
    coffeescript:
      bare: true
    on: ["riot"]
    riot:
      extension: 'tag'   # pattern overrides extension
      pattern: /\.tag$/  # default
      template: 'jade'
      type: 'coffeescript'
