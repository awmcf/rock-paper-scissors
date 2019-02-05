require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game = Game.new( "paper", "rock" )
  end

  def test_rock_paper_scissors_game
    assert_equal( "Paper wins!", @game.rock_paper_scissors_game)
  end

end
