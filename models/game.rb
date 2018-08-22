
class Game

  attr_accessor :option1, :option2

  def initialize(option2)
    @win_order = {
      rock: :scissors,
      scissors: :paper,
      paper: :rock
    }
    @all_moves = @win_order.keys()
    @option1 = @all_moves.sample()
    @option2 = option2.to_sym
  end

  def play_game()
    if @option1 == @option2
      return "it's a draw!"
    elsif @win_order[@option2] == @option1
      return "You win with #{@option2}"
    elsif @win_order[@option1] == @option2
      return "Computer wins with #{@option1}"
    end
  end


end
