# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  else
    arr.inject(:+)
  end
end

def max_2_sum arr
  if arr.empty? then
    return 0
  elsif arr.length == 1 then
    return arr[0]
  else
    return arr.sort[-1] + arr.sort[-2]
  end
end

def sum_to_n? arr, n
  combinedValues = arr.combination(2)
  for pair in combinedValues do
    value = pair[0] + pair[1]
    if value == n
      return true
    end
  end  
  return false
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant? s
  return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  return s.to_i % 4 == 0 if s[/^-?\d+$/]
end

# Part 3

class BookInStock

  attr_accessor :isbn, :price
  
  def initialize isbn, price
    if price<=0 or isbn.empty?
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def price_as_string
    return format("$%.2f", @price)
  end
end
