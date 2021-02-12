list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

#O(n^2)
def my_min(list)

  min = list[0]

  (0...list.length).each do |i|
    (0...list.length).each do |j|
      if list[i] < min
        min = list[i] 
      end
    end
  end
  min
end


#O(n)
def my_min2(list)
 min = list[0]
 list.each { |el| min = el if el < min }
 min
end

p my_min(list)
p my_min2(list)
