require './config/environment'
require './app/models/tweet'

class ApplicationController < Sinatra::Base

# this helps connect our public and views directories
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    erb :index
  end

  post '/tweet' do
  	@tweet = Tweet.new(params[:username], params[:status])
  	erb :tweet
  end

end