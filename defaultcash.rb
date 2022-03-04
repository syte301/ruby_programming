require './cash.rb'

class DefaultCash
   include Cash
   def initialize(d, f)
     @dollars = d
     @factory = f
   end

   def showkurs
     Cash.multiplay(@dollars,@factory)
   end
end

dc = DefaultCash.new(5,5)
puts dc.kurs
