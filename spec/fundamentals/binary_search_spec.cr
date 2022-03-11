require "../../src/fundamentals/binary_search.cr"
require "spec"

#TODO: write unittests for binary search
describe "BinarySearch" do

  it "correctly searches values in an array of integers" do
    res = Fundamentals::BinarySearch.new([11,55,31,93,76,23,43,112,1249,991245,7426247], [1,2,3,4,5,6,7,8,9,10,11])
    res.data.should eq([11])
  end

end
