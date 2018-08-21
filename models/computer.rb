class Computer

  attr_accessor :choice

  def initialize()
    @choice = nil
  end

  def make_choice()
    num = rand(1..3)
    return @choice = "rock" if num == 1
    return @choice = "paper" if num == 2
    return @choice = "scissors" if num == 3
  end

end
