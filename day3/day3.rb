# Write a function timeForMilkAndCookies (time_for_milk_and_cookies in Ruby) that accepts a Date object, and returns true if it's Christmas Eve (December 24th), false otherwise. Keep in mind Javascript's Date month is 0 based, while Ruby's Date month isn't.
require 'date'

def time_for_milk_and_cookies(d)
  if d.month == 12 && d.mday == 24
    return true
  else
    false
  end
end

# Given an array of numbers return an array of numbers from the array that qualify as perfect squares. A perfect square is defined as a whole number that, when square rooted, is a whole number. (Such as 1, 4, 9, 16, etc, etc.)

# Note: Return only one copy of each perfect square in ascending order

def get_squares(array)
  array.map! do |x|
    if (x**(1/2)).class == Fixnum
      x
    end
  end
  array.compact.uniq.sort!
end

# This function has to be called multiply and needs to take two numbers as arguments, and has to return the multiplication of the two arguments.
def multiply(x,y)
  x*y
end

# Add the value "codewars" to the websites array.
# After your code executes the websites array should == ["codewars"]
websites = []
websites << "codewars"

# String search

# Create a method to accept one arbitrary string as an argument, and return a string of length 26.

# The objective is to detect if letters of the alphabet (upper or lower case) are present anywhere in the string, and to set each of the 26 characters corresponding to each letter to either '1' if present, '0' if not.

# So if an 'a' or an 'A' appears anywhere in the argument string (any number of times), set the first character of the returned string to '1' otherwise to '0', if 'b' or 'B' the the second to '1', and so on for the rest of the alphabet.

# So the returned string consists only of '1's and '0's.

# For instance

# change('a   **&  bZ') =>  '11000000000000000000000001'

def change(str)
  if str.class == String
    array = str.split(//)
    binary = Array.new(26, 0)
    array.uniq.sort!
    base = "a".ord
    base_upcase = "A".ord
    array.each do |x|
      if (65..90).include?(x.ord)
        binary[x.ord - base_upcase] = 1
      elsif (97..122).include?(x.ord)
        binary[x.ord - base] = 1
      end
    end
  end
  binary.join('')
end

# Alternative:
# def change a
#   ('a'..'z').to_a.map { |x| a.downcase.include?(x) ? 1 : 0 }.join
# end


