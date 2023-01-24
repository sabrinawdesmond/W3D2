require_relative "card"

class Board

  # deck = [:1, :2, :3, :4, :5, :6, :7, :8]

  def initialize
    @grid = Array.new(4) { Array.new(4, " ") }
    @size = 16
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def empty?(position)
    self[position] == " "
  end

  def card_initalizer(value)
    pair_1 = Card.new(value)
    pair_2 = Card.new(value)
  end

  def populate
    placed_cards = 0

    while placed_cards < @size
      card_initalizer(value)

      placed_cards += 2
    end
    # for each grid element
    # place random card and match
    #
  end

  def render # => print method
    #should print current board
    @grid.each do |row|
      puts row.join(" ")
    end
  end

  def won?
    # return @grid.all? == ' '
    if @grid.each do |row|
      row.all? { |ele| ele != " " }
    end
    end
  end

  def reveal(guessed_pos)
    if !card.face_up
      card.reveal
    end
  end
end
