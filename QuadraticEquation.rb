
class QuadraticEquation

    def initialize(a,b,c)
        @a = a
        @b = b
        @c = c
    end

    def discriminant
      d = @b*@b - 4*@a*@c
    end

    def root
        d = @b*@b - 4*@a*@c
        if (d == 0)
           puts 'x = '+(-@b/2/@a).to_s
        else
           if (d > 0)
              puts 'x1 = '+((-@b-Math.sqrt(d))/2/@a).to_s
              puts 'x2 = '+((-@b+Math.sqrt(d))/2/@a).to_s
           else
              puts 'x1 = ('+(-@b/2/@a).to_s+','+(Math.sqrt(-d)/2/@a).to_s+')'
              puts 'x2 = ('+(-@b/2/@a).to_s+','+(-Math.sqrt(-d)/2/@a).to_s+')'
           end
        end
    end
end

qe = QuadraticEquation.new(-2,4,6)
qe.root
# qe.discriminant

# puts 'A = '
# A = gets.chomp.to_f
# if (A == 0)
#    puts 'Not a quadratic equation.'
#    return
# end
# puts 'B = '
# B = gets.chomp.to_f
# puts 'C = '
# C = gets.chomp.to_f
#
# D = B*B - 4*A*C
#
# if (D == 0)
#    puts 'x = '+(-B/2/A).to_s
# else
#    if (D > 0)
#       puts 'x1 = '+((-B-Math.sqrt(D))/2/A).to_s
#       puts 'x2 = '+((-B+Math.sqrt(D))/2/A).to_s
#    else
#       puts 'x1 = ('+(-B/2/A).to_s+','+(Math.sqrt(-D)/2/A).to_s+')'
#       puts 'x2 = ('+(-B/2/A).to_s+','+(-Math.sqrt(-D)/2/A).to_s+')'
#    end
# end
