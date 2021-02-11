
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