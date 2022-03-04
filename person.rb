class Person
  def initialize (name, age) # "Конструктор"
    @name = name
    @age = age
  end
  def get_info
    @additional_info = "Интересно"
    "Имя: #{@name}, возраст: #{@age}"
  end
end

person1 = Person.new("Джо", 14)
p person1.instance_variables # [:@name, :@age]
puts person1.get_info # => Имя: Джо, возраст: 14
p person1.instance_variables # [:@name, :@age, :@additional_info]
