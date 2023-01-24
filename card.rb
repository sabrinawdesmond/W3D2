class Card
  attr_reader :value
  attr_accessor :face_up

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
    if @face_up == false
      @face_up = true
    end
  end

  def hide
    if @face_up == true
      @face_up = false
    end
  end

  def ==(card)
    return self.value == card.value
  end   

end