gulp = require "gulp"
browserify = require "browserify"
coffeeify = require "coffeeify"

sass = require "gulp-sass"
coffee = require "gulp-coffee"
source = require "vinyl-source-stream"

gulp.task 'compile/javascript', () ->

	b = browserify({
		entries : 'src/scripts/main.coffee'
		transform : [coffeeify]
		})

	b.bundle()
	.pipe(source('main.js'))
	.pipe(gulp.dest('public/js'))

gulp.task 'compile/styles', () ->

	gulp.src 'src/styles/*.scss'
	.pipe(sass())
	.pipe(gulp.dest('public/css'))

gulp.task 'move/templates', () ->

	gulp.src 'src/templates/*.html'
	.pipe(gulp.dest('public/'))

gulp.task 'build', ['compile/javascript', 'compile/styles', 'move/templates']

gulp.task 'watch', () ->

	gulp.watch 'src/templates/*.html', ['move/templates']
	gulp.watch 'src/styles/*.scss', ['compile/styles']
	gulp.watch 'src/scripts/**/*.coffee', ['compile/javascript']

gulp.task 'default', ['build', 'watch']