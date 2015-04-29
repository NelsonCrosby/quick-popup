module.exports = ->
  @initConfig
    config: @file.readJSON 'package.json'
    # CoffeeScript compiler config
    coffee:
      popup:
        options:
          sourceMap: true
          sourceMapName: 'popup.js.map'
        files:
          'popup.js': 'popup.coffee'
    # Uglify minifier config
    uglify:
      popup:
        options:
          sourceMap: true
          sourceMapIn: 'popup.js.map'  # Use coffeescript source map
          banner: @file.read 'compiled-file-prefix.txt'
        files:
          'popup.min.js': 'popup.js'
    # CSS minifier config
    cssmin:
      popup:
        files:
          'popup.min.css': 'popup.css'
    # Build annotated source
    docco:
      popup:
        src: ['popup.coffee']
        options:
          output: 'docs/'
  
  @loadNpmTasks 'grunt-contrib-coffee'
  @loadNpmTasks 'grunt-contrib-uglify'
  @loadNpmTasks 'grunt-contrib-cssmin'
  @loadNpmTasks 'grunt-docco'
  
  @registerTask 'default', ['coffee:popup', 'uglify:popup', 'cssmin:popup']
  @registerTask 'docs', ['docco:popup']
