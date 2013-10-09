express = require 'express'
app = express()
browserify = require 'browserify'
app.use browserify
  mount: '/browserify.js'
  entry: __dirname + '/js/entry.coffee'
  watch: true
stylus = require 'stylus'
app.use stylus.middleware __dirname + '/public'
app.use express.static __dirname + '/public'
app.set 'view engine', 'jade'
app.set 'views', __dirname + '/views'
app.get '/', (req,res) ->
  res.render 'index'
app.listen '3000'
console.log 'Server listening at http://localhost:3000'