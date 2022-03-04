=begin

Алгоритмы, линейный поиск в массиве, работает через цикл (в данном примере for) а через итераторы (each) не работает.
Почему не работает через итераторы each?

x == item;

each возвращает сразу элемент массива, а вы используете его как индекс;
для этого есть метод each_with_index;

return возвращает значение и прекращает выполнение фукнции, если его не использовать, то each выполнится целиком, и результат просто никуда не используется;

в руби в целом принято использовать итераторы, на них много всяких полезных методов завязано, к примеру и массива есть метод find, которым можно сразу решить задачу;

=end

# массив
ARR = [1, 4, 5, 8, 5, 1, 2, 7, 5, 2, 11]

# Работает чере через цикл for
# def linearSearch(arr, item)
#   for i in 0 .. arr.size-1 do
#     if arr[i] == item
#       return i
#     end
#   end
#   return "no"
# end

# Не работает через итеретор each
# def linearSearch(arr, item)
#   arr.each do |x|
#     if x == item
#       return   x
#     end
#   end
#   return "no"
# end

# Работает через итератор each_index
def linearSearch(arr, item)
    arr.each_with_index do |x|
         if x == item
          return x
      end
    end
    return "no"
end

#вызов функции
puts linearSearch(ARR, 11)
