=begin

The MIT License (MIT)

Copyright (c) 2021 Rustem Smailov aka ctrlaltrago

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

=end

#!/usr/bin/env ruby

require './FibonaciNumbers'

class PrimeNumbers
  def initialize(origin)
    @origin = origin
  end
  def each
    @origin
      .select { |i| prime? i }
      #.each { |i| yield i }
  end
  def prime?(x)
    if x % 2 == 0
      true
    end
  end
end


#
# class PrimeNumbers
# {
#     private $_origin;
#
#     public function __construct($argus)
#     {
#         if (is_int($argus)) {
#             $this->_origin = $argus;
#         } else if (array_key_exists('float', $argus)) {
#             $this->__construct(intval($argus['float']));
#         } else
#         {
#             throw new Exception('can\'t initialize');
#         }
#
#     }
#
#     public function beach()
#     {
#         //$arr = array_fill(0, $this->_origin, NULL);
#         //$arr = array_fill(0, $this->_origin, NULL);
#
#         foreach (range(0, $this->_origin) as $number) {
#              if ($number[$i]%2 == 0) $primenumbers[$i] = $number[$i];
#
#         }
#
#         /*
#         for ($i = 0; $i <= $this->_origin-1; $i++) {
#             if ($arr[$i]%2 == 0) $primenumbers[$i] = $arr[$i];
#
#         } */
#
#         return $primenumbers;
#     }
#   }
# }
#
#
# class App
#   def initialize
#
#   end
#
# end
#
# primnums = PrimeNumbers.new( FibonaciNumbers.new(20).each )
#
# puts "prime " + primnums.each.to_s
#
