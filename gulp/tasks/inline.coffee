gulp = require 'gulp'
inlineSource = require 'gulp-inline-source'

plumber = require 'gulp-plumber'
notify = require 'gulp-notify'

config = require '../config'


gulp.task 'inline', ->
  options =
    compress: false

  # gulp.src config.build.html + '/pug/**/*.html'
  gulp.src './index.html'
    .pipe inlineSource options
    .pipe gulp.dest './public'
