#get and set method

class Person
  def initialize (name, age) # Конструктор
    @name = name
    @age = age
  end
  def name # name getter
    @name
  end
  def age # name getter
    @age
  end
  def name= (new_name) # name setter
    @name = new_name
  end
  def age= (new_age) # age setter
    @age = new_age
  end
end

person1 = Person.new("Джо", 14)
puts person1.name() # Джо
person1.name  = "Майк"
person1.age = 23
puts person1.name() # Майк
puts person1.age()
# puts person1.age # undefined method `age' for #<Person:
