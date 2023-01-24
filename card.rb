class Card
  attr_reader :value, :matching_card
  attr_accessor :face_up

  def initialize(value)
    @value = value
    @face_up = false
    @matching_card = value
  end

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
