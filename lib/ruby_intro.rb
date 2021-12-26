# When done, submit this entire file to the autograder.

# Part 1
# number 0
def sum(array)
  if array.empty?
      return 0
  else 
      element_sum = 0
      array.each { |a| element_sum += a }
      return element_sum
  end
end

# number 1
def max_2_sum(array)
  if array.empty?
      return 0
  else 
      array.sort{|x, y| y <=> x}.take(2).reduce(:+)
  end
end

# number 2
def sum_to_n?(array, n)
  return false if array.empty? 
  array.combination(2).any? {|a, b| a + b == n}
end

# Part 2
# number 0
def hello(name)
  return "Hello, " + name
end

# number 1
def starts_with_consonant?(s)
  constant = /^[^aeiou\d\W_]/i
  constant.match(s) ? true : false
end

# number 2
def binary_multiple_of_4?(s)
  /^[01]+$/.match(s) && s.to_i(2) % 4 == 0 ? true : false
end

# Part 3

class BookInStock

  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end