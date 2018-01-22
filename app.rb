require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatin' do
    @user_phrase=PigLatinizer.new(params[:user_phrase])

    erb :results
  end
end
