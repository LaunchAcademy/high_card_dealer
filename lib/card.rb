class Card
  # Your code here

  # Methods you may need:
  # - initialize
  # - method that assigns a card its "value"
  # - attribute readers
  # - any other methods you deem necessary

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_string
    " #{@suit}#{@rank}"
  end

  def value
    if @rank == "J"
      return 11
    elsif @rank == "Q"
      return 12
    elsif @rank == "K"
      return 13
    elsif @rank == "A"
      return 14
    else
      return @rank.to_i
    end
  end

end
