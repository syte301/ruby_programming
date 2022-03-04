class Secret
  def initialize
    @num = rand(0..99)
  end

  def number
    @num
  end
end

#s = Secret.new()
#puts s.number
