module SayMyName
  attr_accessor :var1, :var2

  def initialize(v1,v2)
      @var1 = v1
      @var2 = v2
  end

  def sum
    @var1 + @var2
  end
end

class Person
  include SayMyName # позволяет включить функциональность этого модуля
end
class Company
  include SayMyName
end

person = Person.new(5,5)
# person.var1 = 5
# person.var2 = 5
puts person.sum  # => Имя: Джо

# company = Company.new
# company.var1 =12
# company.var2 =12
# puts company.sum
