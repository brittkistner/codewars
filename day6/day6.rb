# Given an array of numbers return an array of numbers from the array that qualify as perfect squares. A perfect square is defined as a whole number that, when square rooted, is a whole number. (Such as 1, 4, 9, 16, etc, etc.)

# Note: Return only one copy of each perfect square in ascendingorder

# get_squares(1..16) # => [1, 4, 9, 16]
# get_squares(1..100) # => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

def get_squares(array)
  array.sort!.map! do |x|
    x**(0.5) == Fixnum ? x : nil
  end
  array.compact!
end

#Can't figure out how to determine if x is a whole number using either Math.sqrt(x) or the way I have it in the method.

######################
# Define a class Conjurer with a class method conjure that takes two mandatory parameters: name and lambda.

# When called, it should define a new instance method in the Conjurer class with the method name equal to the name parameter, and with the method body equal to the lambda.

# Conjurer.conjure(:one_through_five, ->{(1..5).to_a})
# Conjurer.new.one_through_five
# # => [1, 2, 3, 4, 5]

class Conjurer
  def self.conjure(name, lambda)

  end
end

#http://apidock.com/ruby/Module/define_method

