module Fundamentals

  class BinarySearch

    @whitelist : Array(Int32)
    @data = [] of Int32
    getter data

    # Takes a whitelist ([] of Int32) and data ([] of Int32) as input.
    # The data array is filtered using binary serach leaving only data from the whitelist behind in @data.
    # This constructor is used by initializing providing data, which is then accessible from the object:
    # res = Algs::Fundamentals::BinarySearch.new(whitelist, data)
    # res.data => this is the data array filtered by values in the whitelist provided
    def initialize(whitelist : Array(Int32), data : Array(Int32))
      @whitelist = whitelist.not_nil!.sort
      data.each do |key|
        if index_of(@whitelist, key) == -1
          p key
        else
          @data << key
        end
      end
    end

    # Searches for key in an array a
    # Returns -1 if value is not found
    def index_of(a : Array(Int32), key : Int32)
      lo = 0
      hi = a.size() - 1
      while lo <= hi
        mid = lo + (hi - lo) // 2
        if key < a[mid]
          hi = mid -1
        elsif key > a[mid]
          lo = mid + 1
        else
          return mid
        end
      end
      return -1
    end
  end

end
