module Sports
  class Match # Класс match как часть модуля Sports
    attr_accessor :score
  end
end

module Patterns
  class Match # Класс match как часть модуля Patterns
    attr_accessor :complete
  end
end

# Итак, мы имеем два разных Match

match1 = Sports::Match.new # заметьте использование оператора ::
match1.score = 40; puts match1.score # => 40

match2 = Patterns::Match.new
match2.complete = true; puts match2.complete # => true
