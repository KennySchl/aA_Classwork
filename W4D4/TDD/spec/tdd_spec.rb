require 'rspec'
require "tdd"

# describe Array do

  # let(:Array) {Array.new(5,)}
  describe "my_uniq(arr)" do

    it "should return a new array with no duplicates" do
      expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
    end

  end 

  describe Array do

    describe "#two_sum" do

      it "should find all pairs of positions where the elements at those positions sum to 0" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
      end

       it "should have the indeces in ascending order" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
       end
    end
  end

  describe "my_transpose(array)" do 

    it "should transpose a 2D array" do
      expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end

  end

  describe "stock_picker(array)" do

    it "outputs the most profitable pair of days on which to first buy the stock then sell the stock" do
      expect(stock_picker([3, 2, 1, 4, 5])).to eq([2, 4])
    end

  end

  describe " " do

    it " " do
      expect
    end

  end

#allow()to recieve(:gets).and_return(:String)
  #expect()to recieve(:chomp)
  
 


  