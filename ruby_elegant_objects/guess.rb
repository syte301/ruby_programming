class Guess
  def initialize
    @num = rand(0..99)
  end

  def number
    @num
  end
end

#g = Guess.new()
#puts g.number
