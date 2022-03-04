#!/usr/bin/env ruby

=begin  
class humans
 def initialize(ch)
   @counthuman = ch
 end

 def p
 end

end

class machines
 def initialize
 end

 def p
 end
end

app = App.new( even.new( h.new(10), m.new(10)))

class App
 def initialize
   
 end
 
 def run
   
 end

end
=end


########################################
# ОПРЕДЕЛЯЕМ ПЕРЕМЕННЫЕ
########################################
@humans = 10
@machines = 10

########################################
# ВСПОМОГАТЕЛЬНЫЕ МЕТОДЫ
########################################
# Метод возвращает случайное значение: true или false

def luck?
  rand(0..1) == 1
end

def boom
  diff = rand(1..5)
  if luck?
    @machines -= diff
    puts "#{diff} машин уничтожено"
  else
    @humans -= diff
    puts "#{diff} людей погибло"
  end
end

# Метод возвращает случайное название города
      	
def random_city
  dice = rand(1..5)
  if dice == 1
    'Москва'
  elsif dice == 2
    'Лос-Анджелес'
  elsif dice == 3
    'Пекин'
  elsif dice == 4
    'Лондон'
  else
    'Сеул'
  end
end

def random_sleep
  sleep rand(0.3..1.5)
end

def stats
  puts "Осталось #{@humans} людей и #{@machines} машин"
end

########################################
# СОБЫТИЯ
########################################

def event1
  puts "Запущена ракета по городу #{random_city}"
  random_sleep
  boom
end

def event2
  puts "Применено радиоактивное оружие в городе #{random_city}"
  random_sleep
  boom
end

def event3
  puts "Группа солдат прорывает оборону противника в городе #{random_city}"
  
  random_sleep
  boom
end

########################################
# ПРОВЕРКА ПОБЕДЫ
########################################

def check_victory?
  false
end

########################################
# ГЛАВНЫЙ ЦИКЛ
########################################

loop do
  if check_victory?
    exit
  end
 
  dice = rand(1..3)
  
  if dice == 1
    event1
  elsif dice == 2
    event2
  elsif dice == 3
    event3
  end
  
  stats
  random_sleep
end