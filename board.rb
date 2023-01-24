require_relative "card"

class Board

  def initialize
    @grid = Array.new(2) { Array.new(2, " ") }
    @size = 4
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def empty?(pos)
    self[pos] == " "
  end

  def empty_count
    @grid.flatten.count(' ')
  end

  # def card_initalizer(value)
  #   pair_1 = Card.new(value)
  #   pair_2 = Card.new(value)
  # end

  # def get_random_pos
  #   row = rand(0...@grid.length)
  #     col = rand(0...@grid.length)
  #     pos = [row, col]
      
  # end

  def populate
    # deck = Array('a'..'b')
    deck = ['a', 'a', 'b', 'b']
    i = 0
    while self.empty_count > 0
      row = rand(0...@grid.length)
      col = rand(0...@grid.length)
      pos = [row, col]
      if self.empty?(pos)
        self[pos] = Card.new(deck[i]).value
        i += 1
      end
    end
  end

  # def cheat_board # => print method
  #   #should print current board
    
  # end

  # def user_board
  #   @grid.each do |row|
  #     puts row.join(" ")
  #   end
  # end

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
