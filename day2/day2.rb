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
