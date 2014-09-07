require 'test/unit'
require_relative 'palindrome_permutation'  

class PalindromePermutationTest < Test::Unit::TestCase
  def test_palidrome?
    assert palindrome?("civic")
    assert palindrome?("boob")
    assert palindrome?("hannah")
    assert_equal false, palindrome?("civil")
    assert_equal false, palindrome?("bear")
    assert_equal false, palindrome?("hary")
  end

  def test_rotate
    arr = [1,2,3,4]
    assert_equal [4,1,2,3], rotate(arr)
  end

  def test_permutations
    assert_equal ["abc", "acb", "bac", "bca", "cab", "cba"], permutations('abc') 
    assert_equal ["xy", "yx"], permutations('xy')

  end

  def test_palindrome_permutations?
    assert palindrome_permutations?('civic')
    assert palindrome_permutations?('oobb')
    assert palindrome_permutations?("ivicc")

    assert_equal false, palindrome_permutations?("civil")
    assert_equal false, palindrome_permutations?("livci")
  end
end
