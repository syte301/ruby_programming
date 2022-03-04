require './diff.rb'

class VerboseDiff
  def initialize(d)
     @diff = d
  end

  def number
    raise ArgumentError('Given animal doesn\'t implement .eat!') unless @diff.respond_to?(:number)
    x = @diff.number
    if (x<0)
      puts "To small."
    elsif (x>0)
      puts "To bigg."
    else
      puts "Bingo!"
    end
    x
 end
end


#s = Secret.new
#g = Guess.new
#puts s.number
#puts g.number

puts VerboseDiff.new(
       Diff.new(
         Secret.new,
         Guess.new
       )
     ).number
