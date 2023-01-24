attr_reader :value
attr_accessor :face_up

class Card

  def initialize(value)
    @value = value
    @face_up = false
    @location = []

    # @matching_card = value
  end

  # def matching_card(match_value)
  #   @value = match_value
  #   @face_up == false
  # end

  def reveal
    Game.user_board[pos] = cheat_board[pos]
  end

  def hide
    if @face_up == true
      @face_up = false
    end
  end

  # def ==(card)
  #   return self.value == card.value
  # end   

end