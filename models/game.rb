
class Game

  attr_accessor :option1, :option2

  def initialize(option1, option2)
    @option1 = nil
    @option2 = option2
  end

  def make_choice()
    num = rand(1..3)
    return "rock" if num == 1
    return "paper" if num == 2
    return "scissors" if num == 3
  end


  def play_game()
    @option1 = make_choice()
    case
    when @option1 == "rock"
      return "Computer wins by playing Rock" if @option2 == "scissors"
      return "You win by playing Paper" if @option2 == "paper"
      return "You both picked the same weapon, please try again" if @option2 == "rock"
    when @option1 == "scissors"
      return "Computer wins by playing Scissors" if @option2 == "paper"
      return "You win by playing Rock" if @option2 == "rock"
      return "You both picked the same weapon, please try again" if @option2 == "scissors"
    when @option1 == "paper"
      return "Computer wins by playing Paper" if @option2 == "rock"
      return "You win by playing Scissors" if @option2 == "scissors"
      return "You both picked the same weapon, please try again" if @option2 == "paper"
    end
  end







end
