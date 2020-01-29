require_relative 'config/environment'
# binding.pry
class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        @pl = PigLatinizer.new
        @words = params[:user_phrase]

        erb :piglatin
    end

end