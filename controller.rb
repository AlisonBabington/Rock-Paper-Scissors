require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/game')
also_reload('./models/*')

get '/game' do
  erb(:welcome)
end

get '/game/:option2' do
  game =
  Game.new("paper", params[:option2])
  @result = game.play_game()
  erb(:result)
end

# put '/game/:option2' do
#   game =
#   Game.new(params[:option1], params[:option2])
#   @result = game.play_game()
#   erb(:result)
# end
