class Person
  attr_accessor :name, :age # геттеры и сеттеры для name и age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

person1 = Person.new("Майк","23")
p person1.name # => nil
=иупшт
person1.name = "Майк"
person1.age = 15
puts person1.name # => Майк
puts person1.age # => 15
person1.age = "пятнадцать"
puts person1.age # => пятнадцать
