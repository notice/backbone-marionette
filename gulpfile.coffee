gulp = require 'gulp'
webpack = require 'webpack-stream'
config = require './webpack.config.coffee'
jade = require 'gulp-jade'
rename = require 'gulp-rename'

gulp.task 'js', ->
  gulp.src('entry.js') # dummy file
    .pipe(webpack(config.webpack)) # use hash if filename undefined
    .pipe(gulp.dest('./public/js/'))

gulp.task 'index.html', ->
  gulp.src('./components/dashboard.jade')
    .pipe(jade({pretty: true}))
    .pipe(rename('index.html'))
    .pipe(gulp.dest('./public/'))

gulp.task 'default', ['js', 'index.html']
