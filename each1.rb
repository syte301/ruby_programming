#!/usr/bin/env ruby


=begin
a = [1,2,3,4]
b = a.map {|x| x*x }
c = a.select {|x| x%2==0 }
a.inject do |sum, x|
  sum + x
end
=end

a = [3, 2, 1]
a[3] = a[2] - 1

a.each { |elt| print elt+1 }