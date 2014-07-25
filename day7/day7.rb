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

def title_case(title, minor_words)
array_title = title.downcase.split(" ")
array_minor = minor_words.downcase.split(" ")

array_title.map!.with_index {|word, i| i == 0 ? word.capitalize : (array_minor.include?(word) ? word : word.capitalize)}

array_title.join(" ")
end
