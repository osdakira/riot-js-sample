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
    static_jade:                        # all optionals
      extension:  ".static.jade"        # static-compile each file with this extension in `assets`
      path:       [ /app(\/|\\)docs/ ]  # static-compile each file in this directories
      asset:      "app/jade_asset"      # specify the compilation output
