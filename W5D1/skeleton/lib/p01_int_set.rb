class MaxIntSet

  attr_reader :store

  def initialize(max)
    @store = Array.new(max)
  end

  def insert(num)
    raise 'Out of bounds' if @store.length < num || num < 0
    @store[num] = true
  end

  def remove(num)
    @store.delete(@store[num])
  end

  def include?(num)
    @store[num] == true ? true : false
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  attr_reader :store
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    @store[num % num_buckets] << num 
  end

  def remove(num)
    @store[num % num_buckets].delete(num)
  end

  def include?(num)
    @store[num % num_buckets].include?(num)    
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :store
  attr_accessor :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    if @count == num_buckets
      resize!     
      @store[num % num_buckets] << num 
      @count += num
    end
    @store
  end

  # def count
  #   @count += @store.length
  # end


  def remove(num)
  end

  def include?(num)
  end

  # def inspect
  #   value
  # end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    # #resize! -> addd buckets -> #num_buckets
    flat = @store.flatten
    if flat.length == num_buckets
      @store += (Array.new(num_buckets*2) { Array.new }) 
      flat.each do |ele|
        @store[ele % num_buckets] << ele
      end
    end
    #relocating elements
    #find ele(num) (% new.length) == new_idx
    num_buckets
  end
end
