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

class AnimalShelter
  def initialize
    @animals = []
  end

  def addAnimal(animal)
    raise ArgumentError('Given animal doesn\'t implement .eat!') unless animal.respond_to?(:eat)
    @animals << animal
  end

  def feed(food)
    @animals.each do |animal|
      animal.eat(food)
    end
  end

end

cat = Cat.new
dog = Dog.new
horse = Horse.new


shelter = AnimalShelter.new


shelter.addAnimal(cat)
shelter.addAnimal(dog)
shelter.addAnimal(horse)

shelter.feed('milk')
