require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/game')
require_relative('./models/computer')
also_reload('./models/*')

get '/game' do
  erb(:welcome)
end

get '/game/:option2' do
  game =
  Game.new(params[:option2])
  # @option1 = @computer.make_choice
  @result = game.play_game()
  erb(:result)
end
