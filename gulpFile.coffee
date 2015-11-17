gulp          = require 'gulp'
jade          = require 'gulp-jade'
stylus        = require 'gulp-stylus'
coffee        = require 'gulp-coffee'
reload      = require 'gulp-livereload'

autowatch     = require 'gulp-autowatch'
# concatenate   = require 'gulp-concat'
source      = require 'vinyl-source-stream'
buffer      = require 'vinyl-buffer'
childProcess  = require 'child_process'
coffeeify     = require 'coffeeify'
browserify    = require 'browserify'
# _             = require 'lodash'


paths =
  public:    './public'
  coffee: './src/js/**/*.coffee'
  jade:   './src/html/*.jade'
  stylus: './src/css/*.styl'



gulp.task 'coffee', ->
  bCache = {}
  b = browserify './src/js/index.coffee',
    debug: true
    interestGlobals: false
    cache: bCache
    extensions: ['.coffee']
  b.transform coffeeify
  b.bundle()
  .pipe source 'index.js'
  .pipe buffer()
  .pipe gulp.dest paths.public
  .pipe reload()


gulp.task 'jade', ->
  gulp.src paths.jade
  .pipe jade()
  .pipe gulp.dest paths.public
  .pipe reload()


gulp.task 'stylus', ->
  gulp.src paths.stylus
  .pipe stylus()
  .pipe gulp.dest paths.public
  .pipe reload()


gulp.task 'server', (cb) ->
  require './server'


gulp.task 'watch', ->
  autowatch gulp,
    jade:   paths.jade
    stylus: paths.stylus
    coffee: paths.coffee


gulp.task 'default', 
  ['coffee', 'jade', 'watch']


gulp.task 'default', ['coffee', 'jade', 'stylus', 'server', 'watch']




