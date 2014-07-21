# To complete this kata remove any hash whose two keys sum to an odd number.
#Example:
# remove_odd_hashes(
#   [ {a: 5, b: 5},
#     {a: 3, b: 4},
#     {a: 2, b: 0},
#     {a: 2, b: 1}],
#   :a, :b)

# returns [{a: 5, b: 5}, {a: 2, b: 0}]

def remove_odd_hashes(array,key1,key2)
  array.map! do |x|
    if (x[key1] + x[key2]) % 2 == 0
      x
    end
  end
  array.compact
end

#Alternative
# def remove_odd_hashes(array, key_1, key_2)
#   array.delete_if do |h|
#     (h[key_1] + h[key_2]).odd?
#   end
# end
#################
# Complete the function so that it returns the number of seconds that have elapsed between the start and end times given.

# Tips:

# The start/end times are given as Date (JS/CoffeeScript) and Time (Ruby) instances.
# The start time will always be before the end time.

require 'time'

def elapsed_seconds(start_time, end_time)
  end_time.sec - start_time.sec
end
###################
# Create a method that accepts an array of names, and returns an array of each name with its first letter capitalized.
def cap_me(array)
  array.map! {|x| x.capitalize}
end


# Alternative:
# arr.map &:capitalize

# & calls to_proc on the object (x) and passes it as a block to the method(capitalize), and Ruby implements to_proc on Symbol.
####################
# Write a small function that returns the values of an array that are not odd.

# All values in the array will be integers. Return the good values in the order they are given.
def no_odds(array)
  array.delete_if(&:odd?)
end

##############
# Complete the keysAndValues function so that it takes in an object and returns the keys and values as separate arrays.

# Example:

# keysAndValues({a: 1, b: 2, c: 3}) # should return [[:a, :b, :c], [1, 2, 3]]

def keys_and_values(hash)
  array = []
  array << hash.keys
  array << hash.values
  array
end

# Alternative:
# def keysAndValues(data)
#   [data.keys, data.values]
# end

##################
# Complete the solution. It should try to retrieve the value of the array at the index provided. If the index is out of the array's max bounds then it should return the default value instead.
# data = ['a', 'b', 'c']
# solution(data, 1, 'd') # should == 'b'
# solution(data, 5, 'd') # should == 'd'

# # negative values work as long as they aren't out of the length bounds
# solution(data, -1, 'd') # should == 'c'
# solution(data, -5, 'd') # should == 'd'

def solution(items, index, default_value)
  if index > (items.length - 1)
    return default_value
  elsif index < (-items.length)
    return default_value
  else
    items.fetch(index)
  end
end

# Alternative

# def solution(items, index, default_value)
#   items.fetch(index, default_value)
# end
