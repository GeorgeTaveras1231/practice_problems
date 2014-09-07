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

  def test_permutations
    assert_equal ["abc", "acb", "bac", "bca", "cab", "cba"], permutations('abc') 
    assert_equal ["xy"], permutations('xy')

  end
end
