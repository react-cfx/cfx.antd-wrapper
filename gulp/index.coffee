# import dd from 'ddeyes'
import del from 'del'

import gulp from 'gulp'
import gulpSequence from 'gulp-sequence'
import rename from 'gulp-rename'

import rollup from 'gulp-better-rollup'
import {
  coffee2
  babel
} from 'cfx.rollup-plugin-coffee2'

import image from 'rollup-plugin-image'
import cleanup from 'rollup-plugin-cleanup'

gulp.task 'clean', (cb) =>
  del [ './dist' ]
  , cb

gulp.task 'buildEs', =>

  gulp.src './sources/index.coffee'
  .pipe rollup
    plugins: [
      coffee2
        bare: true
        sourceMap: true
      image()
      cleanup()
    ]
  , 'es'
  .pipe rename 'main.es.js'
  .pipe gulp.dest './dist'

gulp.task 'buildCjs', =>

  gulp.src './dist/main.es.js'
  .pipe rollup
    plugins: [
      babel()
      image()
      cleanup()
    ]
  , 'cjs'
  .pipe rename 'main.js'
  .pipe gulp.dest './dist'

gulp.task 'build'
,
  gulpSequence(
    'buildEs'
    'buildCjs'
  )

gulp.task 'rebuild'
,
  gulpSequence(
    'clean'
    'build'
  )
