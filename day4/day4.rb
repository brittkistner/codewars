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

# Complete the solution so that it returns a formatted string. The return value should equal "Value is VALUE" where value is a 5 digit padded number.


