class Game

  def initialize(thing1, thing2)
    @thing1 = thing1
    @thing2 = thing2
  end

  def rock_paper_scissors_game

    case

    when @thing1.downcase == "rock" && @thing2 == "scissors"
      "Rock wins!"

    when @thing1.downcase == "scissors" && @thing2 == "rock"
      "Rock wins!"

    when @thing1.downcase == "paper" && @thing2 == "rock"
      "Paper wins!"

    when @thing1.downcase == "rock" && @thing2 == "paper"
      "Paper wins!"

    when @thing1.downcase == "scissors" && @thing2 == "paper"
      "Scissors wins!"

    when @thing1.downcase == "paper" && @thing2 == "scissors"
      "Scissors wins!"

    when @thing1.downcase == "paper" && @thing2 == "paper"
      "It's a tie!"

    when @thing1.downcase == "rock" && @thing2 == "rock"
      "It's a tie!"

    when @thing1.downcase == "scissors" && @thing2 == "scissors"
      "It's a tie!"
    end

  end

end
