require 'minitest/autorun' 
require 'minitest/rg'
require_relative('../player.rb')
require_relative('../board.rb')

class TestPlayer < Minitest::Test

  def setup
    @player = Player.new("Player 1")
    @board = Board.new()
  end

  def test_get_name
    assert_equal("Player 1", @player.name)
  end

  def test_get_position_start
    assert_equal(1, @player.position)
  end

  def test_move_player
    @player.position = 5
    @player.move_player(4)
    assert_equal(9, @player.position)
  end

  def test_move_player_plus_30
    @player.position = 26
    @player.move_player(5)
    assert_equal(30, @player.position)
  end

  def test_check_win_true
    assert_equal(true, @player.check_win(30))
  end

  def test_check_win_false
    assert_equal(false, @player.check_win(29))
  end

  def test_square_status
    @player.position = 3
    # index = @player.position - 1
    # assert_equal("h", @player.square_status(@board, index))
    assert_equal(19, @player.square_status(@board, @player.position))
  end

end