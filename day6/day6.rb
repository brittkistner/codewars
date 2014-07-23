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

######################
# Given 2 strings, a and b, return a string of the form short+long+short, with the shorter string on the outside and the longer string on the inside. The strings will not be the same length, but they may be empty (length0).

# For example:

# solution("1", "22") # returns "1221"
# solution("22", "1") # returns "1221"

def solution(a, b)
  a.size > b.size ? b+a+b : a+b+a
end

######################

# You probably know, that in Javascript (and also Ruby) there is no concept of interfaces. There is only a concept of inheritance, but you can't assume that a certain method or property exists, just because it exists in the parent prototype / class. We want to find out, whether a given object fulfils the requirements to implement the "SantaClausable" interface. We need to implement a method which checks for this interface.

# Rules

# The SantaClausable interface is implemented, if all of the following methods are defined on an object:

# sayHoHoHo() / say_ho_ho_ho
# distributeGifts() / distribute_gifts
# goDownTheChimney() / go_down_the_chimney
# Example

# class NotSantaClaus
#     def say_ho_ho_ho
#     end
# end

# is_santa_clausable(SantaClaus.new) # must return TRUE
# is_santa_clausable(NotSantaClaus.new) # must return FALSE

def is_santa_clausable(obj)
  if obj.methods.include?(:say_ho_ho_ho) && obj.methods.include?(:distribute_gifts) && obj.methods.include?(:go_down_the_chimney)
    return true
  else
    false
  end
end

# Best Practices:

# def is_santa_clausable(obj)
#   [ :say_ho_ho_ho, :distribute_gifts, :go_down_the_chimney ].all? { |m| obj.respond_to?(m) }
# end
