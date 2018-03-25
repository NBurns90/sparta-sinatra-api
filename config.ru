require 'sinatra'
require 'sinatra/reloader' if development?
require 'rack'
require 'rack/rewrite'

require_relative './app/controllers/static_controller.rb'
require_relative './app/controllers/boss_controller.rb'
require_relative './lib/BlizzardAPI.rb'
# require_relative './app/controllers/static_controller.rb'

use Rack::MethodOverride

run Rack::Cascade.new([
  StaticController,
  BossController
])
