require "tdd"

# describe Array do

  # let(:Array) {Array.new(5,)}
  describe "my_uniq(arr)" do

    it "should return a new array with no duplicates" do
      expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
    end

  end

  # describe

  # end

  