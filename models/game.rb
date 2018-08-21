
class Game

  attr_accessor :computer, :option1, :option2

  def initialize(option2)
    @computer = Computer.new
    @option1 = :none
    @option2 = option2
  end

  def play_game()
    @computer.make_choice
    @option1 = @computer.choice
    case
    when @option1 = "rock"
      return "Computer wins by playing Rock" if @option2 == "scissors"
      return "You win by playing Paper" if @option2 == "paper"
      return "You both picked the same weapon, please try again" if @option2 == "rock"
    when @option1 = "scissors"
      return "Computer wins by playing Scissors" if @option2 == "paper"
      return "You win by playing Rock" if @option2 == "rock"
      return "You both picked the same weapon, please try again" if @option2 == "scissors"
    when @option1 = "paper"
      return "Computer wins by playing Paper" if @option2 == "rock"
      return "You win wins by playing Scissors" if @option2 == "scissors"
      return "You both picked the same weapon, please try again" if @option2 == "paper"
    end
  end







end
