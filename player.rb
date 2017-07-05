class Player

  attr_accessor :name, :position

  def initialize(name)
    @name = name
    @position = 1
  end

  def roll_die
    rand(1..6)
  end

  def move_player(move)
    @position + move <= 30 ? @position += move : @position = 30
  end

  def check_win(position)
    position == 30 ? true : false
    # TODO: print message/ terminate game if won?
  end

  def square_status (board, square)
    board.squares[square]
  end

end