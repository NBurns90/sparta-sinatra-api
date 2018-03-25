class BossController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader
  end

  get '/boss' do
    @title = 'Bosses Homepage'
    @multiboss = BlizzardAPI.new.multi_boss_service.multi_boss_response('en_GB').values

    erb :'boss/index'
  end

  get '/boss/:bossID' do
    @title = 'BOSS NAME'

    erb :'boss/show'
  end

end
