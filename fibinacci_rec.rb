def fibonacci(n)
    if n < 3
        1
    else
        fibonacci(n - 1) + fibonacci(n - 2)
    end
end

(1..1600).each {|n| puts "#{fibonacci(n)}, "}
puts "..."
