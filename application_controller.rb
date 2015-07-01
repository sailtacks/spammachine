require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
  	@phone_number = params[:phone_number]
  	@message = params[:message]
  	@times = params[:times]
  end

  get '/result' do
  	erb :result
  end

end
