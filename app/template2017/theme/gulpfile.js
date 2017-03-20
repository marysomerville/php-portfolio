var gulp = require('gulp');
var sass = require('gulp-sass');
var notify = require('gulp-notify');
var rename = require('gulp-rename');
var minifycss = require('gulp-minify-css');
var jshint = require('gulp-jshint');
var wait = require('gulp-wait');
var concat = require('gulp-concat');
var rename = require('gulp-rename');    
var uglify = require('gulp-uglify');
var autoprefixer = require('gulp-autoprefixer');
var sourcemaps 	= require('gulp-sourcemaps');
var plumber 	= require('gulp-plumber');

gulp.task('styles', function() {
	gulp.src('css/**/*.scss')
		.pipe(wait(500))
		.pipe(sass().on('error', sass.logError))
		.pipe(autoprefixer())
		.pipe(gulp.dest('css/'))
		.pipe(rename({ suffix: ".min" }))
		.pipe(minifycss({ keepSpecialComments: 0 }))
		.pipe(gulp.dest('css/'))
		.pipe(notify(function (file) {
			return 'Styles: ' + file.relative + ' generated.';
		}))
});

var jsFiles = 'js/src/*.js',  
    jsDest = 'js';

gulp.task('scripts', function() {  
    return gulp.src(jsFiles)
    	.pipe(plumber())
    	.pipe(sourcemaps.init())
        	.pipe(concat('scripts.js'))
        	.pipe(gulp.dest(jsDest))
        	.pipe(rename({suffix: '.min'}))
        	.pipe(uglify())
        .pipe(sourcemaps.write())
        .pipe(gulp.dest(jsDest));
});

gulp.task('plugin-scripts', function(){
    return gulp.src(['js/plugins/*.js'])
        .pipe(concat('plugins.js'))
        .pipe(gulp.dest('js'))
        .pipe(rename('plugins.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest('js'));
});

//Watch task
gulp.task('watch',function() {
    gulp.watch('css/**/*.scss',['styles']);
    gulp.watch('js/src/*.js',['scripts']);
    gulp.watch('js/plugins/*.js', ['plugin-scripts']);
});

gulp.task('default', ['styles', 'scripts', 'plugin-scripts', 'watch'], function(){});