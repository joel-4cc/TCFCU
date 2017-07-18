axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
wordpress    = require 'roots-wordpress'
templates    = require 'client-templates'
config       = require 'roots-config'
fs           = require 'fs'


##fs.readdir 'views/pages', (err, data) ->
##    navfiles.push(data)
##   console.log(navfiles)

module.exports =
	ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

	extensions: [
		js_pipeline(files: ['assets/**/*.js','assets/js/*.coffee']),
		css_pipeline(files: ['assets/**/*.css','assets/css/*.styl'])
		wordpress
			site:'tcfcu1.4cc.co'
			post_types:
				post: {template:'views/partial/blog_post.jade'}
		templates
			base:'views/templates'
	]
	
	stylus:
		use: [axis(), rupture(), autoprefixer()]
		sourcemap: true
	
	'coffee-script':
		sourcemap: true
	
	jade:
		pretty: true
	
	server:
		clean_urls:true
	
	locals:
		doge:'wow'


