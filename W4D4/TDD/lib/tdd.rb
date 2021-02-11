
def my_uniq(arr)
  arr.uniq
end

class Array

  def two_sum

    result = []

    (0...self.length - 1).each do |i|
      (i + 1...self.length).each do |j|
        result << [i,j] if self[i] + self[j] == 0
      end
    end
    result
  end

end

def my_transpose(array)
  array.transpose
end

def stock_picker(array)
  [array.index(array.min), array.index(array.max)]
end

class TowerOfHanoi
  
  attr_reader :a, :b, :c

  def initialize
    @a = [3, 2, 1]
    @b = []
    @c = []
  end

  def move(n, start finish, aux)
    if n > 0
      # Move n - 1 disks from start to aux, so they are out of the way
      move(n - 1, start, aux, finish)

      # Move the nth disk from start to finish
      finish.append(start.pop())

      # Display our progress
      print(a, b, c, '##############', sep='\n')

      # Move the n - 1 disks that we left on aux onto finish
      move(n - 1, aux, finish, start)
    end

  end

end

# Initiate call from start A to finish C with aux B
# move(3, A, C, B)