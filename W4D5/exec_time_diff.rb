# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# #O(n^2)
# def my_min(list)

#   min = list[0]

#   (0...list.length).each do |i|
#     (0...list.length).each do |j|
#       if list[i] < min
#         min = list[i] 
#       end
#     end
#   end
#   min
# end


# #O(n)
# def my_min2(list)
#  min = list[0]
#  list.each { |el| min = el if el < min }
#  min
# end

# p my_min(list)
# p my_min2(list)


list = [5, 3, -7]

# def largest_contiguous_subsum(list)
#   arr = []
  
#   (0...list.length).each do |i|
#     (i+1...list.length).each do |j|
#       arr << sub_arr = list[i..j]
#     end
#   end
#   arr.each_with_index do |el, i|
#     arr[i] = el.sum
#   end
#   arr.max
# end

# p largest_contiguous_subsum(list)
#O(n^2)

def largest_contiguous_subsum_2(list)
  sum = 0
  largest_sum = 0

  i = 0
  while i < list.length
     list[i..-1].sum > list.reverse[i..-1].sum ? list[i..-1].sum : 
     
    
    i += 1
  end
end

largest_contiguous_subsum_2(list)