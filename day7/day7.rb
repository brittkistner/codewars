# Complete the Compute method/function so that if a block is given it will run else it returns "Do not compute".

def compute
  yield
end
###################

# Complete the squareSum method so that it squares each number passed into it and then sums the results together.

# For example:

# squareSum([1,2, 2]) # should return 9
def square_sum(numbers)
  sum = 0
  numbers.each {|x| sum +=(x**2)}
  sum
end

# Alternative
# def square_sum(numbers)
#   numbers.map {|n| n*n}.reduce(:+)
# end

################

# A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

# Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.

# title_case('a clash of KINGS', 'a an the of') # should return: 'A Clash of Kings'
# title_case('THE WIND IN THE WILLOWS', 'The In') # should return: 'The Wind in the Willows'
# title_case('the quick brown fox') # should return: 'The Quick Brown Fox'

def title_case(title, *minor_words)
  array_title = title.downcase.split(" ")
  if minor_words.empty?
    array_title.map! {|word| word.capitalize}
    return array_title.join(" ")
  end

  array_minor = minor_words[0].downcase.split(" ")

  array_title.map!.with_index {|word, i| i == 0 ? word.capitalize : (array_minor.include?(word) ? word : word.capitalize)}

  array_title.join(" ")
end

# Create a method/function that returns an array of numbers from 1 to 100.

# If no arguments are passed the value at the index of the array for number should be 'Fizz' if it is divisible by 3, 'Buzz' if divisible by 5, 'FizzBuzz' if it divisible by both 3 and 5, or the number if it is not divisible by 3 or 5.

# The method should take up to 4 arguments:

# The first and second arguments are strings, which should be 'Fizz' and 'Buzz' by default.

# The third and fourth arguments are integers and and should be 3 and 5 by default.

# Example

# fizz_buzz_custom[15]                         # returns 16
# fizz_buzz_custom[44]                         # returns "FizzBuzz" (45 is divisible by 3 and 5)
# fizz_buzz_custom('Hey', 'There')[25]         # returns 26
# fizz_buzz_custom('Hey', 'There')[11]         # returns "Hey" (12 is divisible by 3)
# fizz_buzz_custom("What's ", "up?", 3, 7)[80] # returns "What's " (81 is divisible by 3)


def fizz_buzz_custom(string_1 = "Fizz", string_2 = "Buzz", num_1 = 3, num_2 = 5)
fizz_buzz_custom = (1..100).to_a
fizz_buzz_custom.map! do |num|
  if (num % num_1) == 0 && (num % num_2) == 0
    string_1+string_2
  elsif (num % num_1) == 0
    string_1
  elsif (num % num_2) == 0
    string_2
  else
    num
  end
end
fizz_buzz_custom
end
##################
# You are the greatest chef on earth. No one boils eggs like you! Your restaurant is always full of guests, who love your boiled eggs. But when there is a greater order of boiled eggs, you need some time, because you have only one pot for your job. How much time do you need?

# Your Task

# Implement a function, which takes a non-negative integer, representing the number of eggs to boil. It must return the time in minutes (integer), which it takes to have all the eggs boiled.

# Rules

# you can put at most 8 eggs into the pot at once
# it takes 5 minutes to boil an egg
# we assume, that the water is boiling all the time (no time to heat up)
# for simplicity we also don't consider the time it takes to put eggs into the pot or get them out of it
# Example

# cooking_time 0 # must return 0
# cooking_time 5 # must return 5
# cooking_time 10 # must return 10


def cooking_time(eggs)
  eggs <= 0 ? 0 : ((eggs.to_f/8).ceil)*5
end


# Complete the Compute method/function so that if a block is given it will run else it returns "Do not compute".
def compute
  block_given? ? yield : "Do not compute"
end
###############

# Complete the solution so that it takes the object (JavaScript/CoffeeScript) or hash (ruby) passed in and generates a human readable string from its key/value pairs.

# The format should be "KEY = VALUE". Each key/value pair should be separated by a comma except for the last pair.

# Example:

# solution({a: 1, b: '2'}) # should return "a = 1,b = 2"

def solution(pairs)
  pairs.to_a.map {|x| x.join(" = ")}.join(",")
end

#Alternative
# def solution(pairs)
#   # TODO: complete
#   pairs.map{|k,v| "#{k} = #{v}"}.join(',')
# end












