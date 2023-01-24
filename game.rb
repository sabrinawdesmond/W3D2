require_relative 'human_player'
require_relative 'board'
require_relative 'card'

class Game
  def initialize
    @board = Board.new
    @user_board = Board.new
    @cheat_board = @board.populate
    @player = HumanPlayer.new
  end

  def play 
    move1 = @player.get_move
    @board.
  end

  def cheat_board 
    @cheat_board# be a populated board
  end

  def user_board
    # is empty/hidden board
      # take user move and assign cheat board value to user board
      # take user move2 and assign cheat  board value to user board
      # if value at move1 != value at move2
        # move1 = ' ' && move2 = ' '



    # @grid.each do |row|
    #   puts row.join(" ")
    # end
  end
end