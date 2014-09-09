require 'test/unit'
require_relative 'hi_cal'

class HiCalTest < Test::Unit::TestCase
  def test_overlap?
    # returns true if ranges overlap eachother
    assert overlap?([1, 2], [2, 3]) 
    assert_equal false, overlap?([1, 2], [3, 4])
  end

  def test_hi_cal
    assert_equal [[0, 1], [3, 8], [9, 12]], hi_cal([[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]) 
    assert_equal [[1, 4]], hi_cal([[1, 2], [2, 4]])
  end

  def test_merge
    assert_equal [2, 7], merge([[2, 3], [3, 4], [4, 5], [6, 7]])
  end
end
