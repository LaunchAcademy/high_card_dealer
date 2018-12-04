class Hand

  attr_reader :cards

  def initialize(array_of_cards)
    binding.pry
    @cards = array_of_cards
  end

  def to_string
    hand_string = ""
    @cards.each do |card|
      hand_string += card.to_string
    end
    return hand_string
  end

  def total_value
    sum = 0
    @cards.each do |card|
      sum += card.value
    end
    sum.to_s
  end

end
