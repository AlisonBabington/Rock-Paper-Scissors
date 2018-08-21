require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/game')
also_reload('./models/*')

get '/game' do
  erb(:welcome)
end

get '/game/:option1/:option2' do
  game =
  Game.new( @option1,
  params[:option2])
  @result = game.play_game()
  erb(:result)
end

get '/game/rock' do
  erb(:welcome)
end

post '/game/rock' do
  @option1 = "rock"
  redirect 'game/rock'
end

get '/game/scissors' do
  erb(:welcome)
end

post '/game/scissors' do
  @option1 = "scissors"
  redirect 'game/scissors'
end

get '/game/paper' do
end
