require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')

require_relative('../models/game.rb')
require_relative('../models/computer.rb')

class GameTest < Minitest::Test

  #
  # def test_random_2()
  #   game = Game.new("rock")
  #   p game.option2
  #   assert_equal("rock", game.play_game())
  # end

end
