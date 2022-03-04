class Cat
  def eat(food)
    puts "nom nom #{food}"
  end
end

class Dog
  def eat(food)
    puts "bark bark #{food}"
  end
end

class Horse
  def eat(food)
    puts "Qru Qru #{food}"
  end
end

class Duck
  def eat(food)
    puts "Qwak Qwak #{food}"
  end
end

class AnimalShelter

  def initialize(*animal)
      # @last_size_of_arr = 0
      @animals = animal
  end

  def addAnimal(*animals)

    animals.each do |animal|
      raise ArgumentError('Given animal doesn\'t implement .eat!') unless animal.respond_to?(:eat)
    end

    @last_size_of_arr = @animals.size
    @animals.concat animals
    
  end

  def feed_last(food)

    # last_size_of_arr = 0
    last(n)
    (@last_size_of_arr..@animals.size-1).each do |animal|
      @animals[animal].eat(food)
    end

  end

  def feed_all(food)

      @animals.each do |animal|
        animal.eat(food)
      end

  end

end

cat = Cat.new
dog = Dog.new
horse = Horse.new
duck = Duck.new

puts "***initialize***"
shelter = AnimalShelter.new(dog,cat)
shelter.feed_last('milk')

puts "***feed all***"
shelter.feed_all('milk')

#
# puts '***add***'
# shelter.addAnimal(horse, duck)
# shelter.feed('milk')
#
# puts '***add***'
# shelter.addAnimal(duck,cat)
# shelter.feed('milk')
