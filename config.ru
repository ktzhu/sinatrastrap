# Load gems
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'slim'
require 'sass'
require 'coffee-script'

# Load files
require './assets'
require './app'

# Run app
run App
