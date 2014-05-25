require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'main', 'game_winner'))

class TestRockPaperScissors< MiniTest::Unit::TestCase
  $player = RockPaperScissors.new

  def test_equals_strategy
    assert_equal $player.winner(['Joker', 'P'], ['Batman', 'P']), 'Joker'
  end

  def test_different_strategy
    assert_equal $player.winner(['Joker', 'P'], ['Batman', 'S']), 'Batman'
    assert_equal $player.winner(['Joker', 'R'], ['Batman', 'S']), 'Joker'
  end

  def test_exception_strategy
    assert_raises(RockPaperScissors::NoSuchStrategyError) { $player.winner(['Joker', 'P'], ['Batman', '']) }
  end

end

