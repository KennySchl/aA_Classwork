# def two_sum?(arr, target_sum)
#   (0...arr.length).each do |i|
#   (i+1...arr.length).each do |j|
    
#     return true if arr[i] + arr[j] == target_sum
#     end
#   end
#   false
# end

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false

# def bsearch(arr, target)
#   return nil if arr.empty?
#   mid = arr.length / 2
#   return mid if arr[mid] == target

#   if target < arr[mid]
#     bsearch(arr[0...mid], target)
#   else
#    result = bsearch(arr[mid + 1..-1], target)
#    result.nil? ? nil : mid + 1 + result
#   end
# end

# def okay_two_sum?(arr, target)
#   sum = []

#   i = 0
#   while i < arr.length
#     sum << arr[i..-1].sum  
#     sum << arr.reverse[i..-1].sum  
#     i += 1
#   end
#  bsearch(sum.sort, target).nil? ? false : true
# end

#  arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


def hash_two_sum?(arr, target)

  hash = Hash.new(0)
  arr.each {|el|  hash[el] = 0} 

  arr.each do |el|
    next if el == 0 || el == target / 2

   diff = target - el 

    if hash.has_key?(diff)
      return true
    end
  end
  return false
end

 arr = [0, 1, 5, 7]
p hash_two_sum?(arr, 6) # => should be true
p hash_two_sum?(arr, 10) # => should be false

# arr , target

# hash Hash.new {}

# diff = target - arr[i]
# if hash.has_key?(diff)
# return true
# else
# return false

