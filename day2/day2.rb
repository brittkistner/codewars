# Finish the solution so that it sorts the passed in array of numbers. If the function passes in an empty array or null/nil value then it should return an empty array.

def solution(nums)
  if nums.class != Array || nums.length ==0
    return []
  end
  nums.sort
end

# Santa's senior gift organizer Elf developed a way to represent up to 26 gifts by assigning a unique alphabetical character to each gift. After each gift was assigned a character, the gift organizer Elf then joined the characters to form the gift ordering code.

# Santa asked his organizer to order the characters in alphabetical order, but the Elf fell asleep from consuming too much hot chocolate and candy canes! Can you help him out?

# Sort the Gift Code

# Write a function called sortGiftCode (sort_gift_code in Ruby) that accepts a string containing up to 26 unique alphabetical characters, and returns a string containing the same characters in alphabetical order.

def sort_gift_code(str)
  str.split('').sort.join('')
end

# Write a method sum that accepts an unlimited number of integer arguments, and adds all of them together.

# The method should reject any arguments that are not integers, and sum the remaining integers.

def sum(*integers)
  array = []
  array.push(*integers)
  array.reject! {|num| num.class !=Fixnum}
  sum = 0
  array.each {|num| sum += num}
  sum
end

# Christmas is coming and many people dreamed of having a ride with Santa's sleigh. But, of course, only Santa himself is allowed to use this wonderful transportation. And in order to make sure, that only he can board the sleigh, there's an authentication mechanism.

# Your task is to implement the authenticate() method of the sleigh, which takes the name of the person, who wants to board the sleigh and a secret password. If, and only if, the name equals "Santa Claus" and the password is "Ho Ho Ho!" (yes, even Santa has a secret password with uppercase and lowercase letters and special characters :D), the return value must be true. Otherwise it should return false.

def authenticate(name, password)
  if name != "Santa Claus" && password != "Ho Ho Ho!"
    return false
  end
  true
end
