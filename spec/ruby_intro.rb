# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0,:+)
end

def max_2_sum arr
  arr.length < 2 ? sum(arr) : sum(arr.sort.slice(-2,2))
end

def sum_to_n? arr, n
  arr.combination(2).any? {|x| sum(x) == n} 
end


# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s.match(/^[a-z&&[^aeiou]]/i)
end

def binary_multiple_of_4? s
  s.length > 0 && s.match(/^[0|1]*$/) ? s.to_i(2) % 4 == 0 : false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.eql?('') or price<= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$" + "%.2f" % self.price
  end
end
