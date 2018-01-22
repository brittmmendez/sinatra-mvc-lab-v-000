require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @input= (params[:phrase])
    @user_input=PigLatinizer.new(@input)

    erb :results
  end
end
