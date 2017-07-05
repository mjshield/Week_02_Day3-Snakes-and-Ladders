require('minitest/autorun')
require( 'minitest/rg' )
require_relative('../board.rb')

class TestBoard < Minitest::Test

  def setup 

    @board = Board.new()

  end

  def test_board_square_total
    assert_equal(30, @board.squares.length)
  end

end