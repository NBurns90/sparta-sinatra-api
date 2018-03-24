require 'sinatra'
require 'sinatra/reloader' if development?
require 'rack'
require 'rack/rewrite'

require_relative './app/controllers/.rb'
require_relative './lib/'

use Rack::MethodOverride

# run Rack::Cascade.new([
#   StaticController,
#   PersonController,
#   CityController
# ])
