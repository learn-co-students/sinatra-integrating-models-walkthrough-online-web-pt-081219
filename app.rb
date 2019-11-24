require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :results
  end

  # get '/' do
  # 	erb :results
  # end
end

#Hi my name is Mark. I live in the Hartford, Connecticut area and I am a part time software engineering student at the Flatiron School in New York City. 
