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
    # @boss = BlizzardAPI.new.single_boss_service.single_boss_response('26532', 'en_GB')
    #
    # @id = @boss['id']

    erb :'static/static'
  end

end
