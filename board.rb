class Board

  attr_reader :squares

  def initialize()

    # @squares = ["1", "2", "h", "4", "5", "6", "7", "8", "9", "10", "h", "12", "13", "14", "15", "16", "s", "18", "s", "h", "s", "22", "23", "24", "25", "26", "s", "28", "29", "30" ]
    @squares = [nil, nil, 19, nil, 3, nil, nil, nil, nil, nil, 15, nil, nil, nil, nil, nil, -13, nil, -12, 9, -12, nil, nil, nil, nil, nil, -26, nil, nil, nil]
  end

end