class App < Sinatra::Base
  enable :sessions
  use ScssEngine
  use CoffeeEngine

  # Configure reloading for dev purposes
  configure :development do
    register Sinatra::Reloader
  end

  # Configure directories so Sinatra knows where to find stuff
  set :views, File.dirname(__FILE__) + '/views'
  set :public_folder, File.dirname(__FILE__) + '/public'

  get '/' do
    # For flat file rendering
    File.open('public/index.html', 'w') { |f| f.write(slim :index) }

    slim :index
  end

  # Error handling
  not_found do
    'wat'
  end

  if __FILE__ == $0
    App.run! :port => 4000
  end
end
