class StaticController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader
  end

  get '/' do
    @title = 'Choose a Service'

    @bosstest = BlizzardAPI.new.single_boss_service.single_boss_response('55308', 'en_GB')

    erb :'static/static'
  end

end
