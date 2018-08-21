class Game

  attr_accessor :option1, :option2

  def initialize(option1, option2)
    @option1 = option1
    @option2 = option2
  end

  def play_game
    case
    when @option1 == "rock"
      return "Player1 wins by playing rock wins" if @option2 == "scissors"
      return "Player2 wins by paper wins" if @option2 == "paper"
      return "Both players picked the same weapon, please try again" if @option2 == "rock"
    when @option1 == "scissors"
      return "Player 1 wins by playing scissors wins" if @option2 == "paper"
      return "Player 2 wins by playing rock wins" if @option2 == "rock"
      return "Both players picked the same weapon, please try again" if @option2 == "scissors"
    when @option1 == "paper"
      return "Player 1 wins by paper wins" if @option2 == "rock"
      return "Player 2 wins by scissors wins" if @option2 == "scissors"
      return "Both players picked the same weapon, please try again" if @option2 == "paper"
    end
  end

end
