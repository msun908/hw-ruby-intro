# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
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
  # YOUR CODE HERE
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
  # YOUR CODE HERE
  return 'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return s.to_i % 4 == 0 if s[/^-?\d+$/]
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
