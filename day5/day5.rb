# Make a simple function called greet that returns the most-famous "hello world!".

# Although this has been thought as a simple exercise for beginners, other people chimed in and loved to show off how wonderfully complicated you can write "hello world!" - so go for it, create the most beautiful "hello world!"

def greet
  'hello world!'
end
###################

# Just a simple sorting usage. Create a function that returns the elements of the input-array in a sorted manner.
def sortme(names)
  names.sort
end
###################
# There is an object/class already created called MrFreeze. Mark this object as frozen so that no other changes can be made to it.

class MrFreeze
  def self.frozen
    MrFreeze.freeze
  end
end

###################
# Complete the solution so that it returns a formatted string. The return value should equal "Value is VALUE" where value is a 5 digit padded number.

# Example:

# solution(5) # should return "Value is 00005"

def solution(value)
  answer = ""
  number_string = value.to_s
  ( 5 - number_string.length).times do
         answer += "0"
   end
   answer = answer + number_string
    "Value is #{answer}"
end

# Alternative:

# def solution(value)
#   "Value is %.5d" % value
# end
#####################

# Finish the solution so that it sorts the passed in array of numbers. If the function passes in an empty array or null/nil value then it should return an empty array.
# For example:

# solution([1, 2, 10, 50, 5]) # should return [1,2,5,10,50]
# solution(nil) # should return []
def sort_array(nums)
  nums.nil? ? [] : nums.sort
end

# Alternative
# def solution(nums)
#   Array(nums).sort
# end
#####################
# Complete the solution so that it sorts an array of hashes passed in by the hash key specified.

# Example:

# solution([{'a' => 2}, {'a' => 1}], 'a')
# # => [{'a' => 1}, {'a' => 2}]]

# solution([{a: 1}, {a: 5}, {a: 3}], :a)
# # => [{a:1}, {a: 3}, {a: 5}]

def sort_hashes(array, key)
  array.sort_by do |x|
    x.values
  end
end

# Alternative:
# def solution(array, key)
#   array.sort_by {|a| a[key]}
# end




