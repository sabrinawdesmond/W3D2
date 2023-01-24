class HumanPlayer
  def get_move
    p 'please enter position of the care you would like to flip (ex '0 0')'
    gets.chomp.split.map(&:to_i)
  end
end