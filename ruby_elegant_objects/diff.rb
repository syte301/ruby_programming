require './secret.rb'
require './guess.rb'

class Diff
  def initialize(s, g)
     @secret = s
     @guess  = g
  end

  def number
    raise ArgumentError('Given animal doesn\'t implement .eat!') unless @secret.respond_to?(:number)
    raise ArgumentError('Given animal doesn\'t implement .eat!') unless @guess.respond_to?(:number)
    @secret.number - @guess.number
  end
end


#s = Secret.new
#g = Guess.new
#puts s.number
#puts g.number

puts Diff.new(
        Secret.new,
        Guess.new
      ).number
