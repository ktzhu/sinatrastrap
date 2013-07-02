require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'slim'
require 'sass'
require 'coffee-script'

require './assets'
require './app'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'rack/test'
require 'rspec'

RSpec.configure do |config|
  config.include Rack::Test::Methods

  def app
    App
  end
end
