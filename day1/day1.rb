# Now you have to write a function called square that takes an argument and returns the square of it.
def square(x)
  x * x
end

# Define a new instance method on the Array class called second, which returns the second item in an array (similar to the way .first and .last work in Ruby).

# If there is no element with index 1 in the array, return nil in Ruby, or undefined in Javascript.

class Array
  def second
    return self[1]
  end
end

# Complete the bool_to_word method.

# Given: a boolean value

# Return: a 'Yes' string for true and a 'No' string for false

def bool_to_word(boolean)
  if boolean == true
    return "Yes"
  elsif boolean == false
    return "No"
  else
    nil
  end
end

# Write a method that takes one argument as name and then greets that name, capitalized and ends with an exclamation point.

def greeting(name)
  "Hello #{name.capitalize}!"
end

# Write a function that flattens an Array of Array objects into a flat Array. Your function must only do one level of flattening.

def flatten(array)
  new_array = []
  array.each do |x|
    if x.class == Array
      x.each {|y| new_array.push(y)}
    else
      new_array.push(x)
    end
  end
  new_array
end

# Steve loves MS Windows calculator in Standard mode.

# He tries to calculate 2 + 2 * 2 in his favorite programming language. But Steve doesn't know about order of operations and he wonders why answers are different. He expects 8 but gets 6.

# Help Steve to fix program, so result will be identical to MS Windows calculator.

def calculate
  (2 + 2) * 2
end

# Create a method say_hello that takes as input a name, city, and state to welcome a person. Note that name will be an array consisting of one or more values that should be joined together with one space betweeen each, and the length of the name array in test cases will vary.

def say_hello(name,city,state)
  new_name = name.map {|x| x.capitalize}.join(' ')
  "Hello, #{new_name}! Welcome to #{city.capitalize}, #{state.capitalize}!"
end

# Complete the solution so that it takes an array of keys and a default value and returns a hash with all keys set to the default value.
def solution(keys, default_value)
  hash = Hash.new
  keys.each do |x|
    hash[x] = default_value
  end
  hash
end

# Update the solution method to round the argument value to the closest precision of two. The argument will always be a float.

def number_solution(value)
  value.round(2)
end

