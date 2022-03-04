#!/usr/bin/env ruby


class Test
    def initialize *args
        if args.size == 1
            puts "first constructor"
        elsif args.size == 2
            puts "second constructor"
        else
            raise "Required 1 or 2 parameters"
        end
    end
end

class Test
    @dollars;
    def initialize(args)
        if args.size == 1
            puts "first constructor"
        elsif args.size == 2
            puts "second constructor"
        else
            raise "Required 1 or 2 parameters"
        end
    end

end
