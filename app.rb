require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = params[:user_phrase].to_s
    pig = PigLatinizer.new
    @pig_phrase = pig.piglatinize(phrase)
    "#{@pig_phrase}"
  end
end