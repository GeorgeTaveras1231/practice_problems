require 'test/unit'
require_relative 'coin'

class CoinCombinationTest < Test::Unit::TestCase
  def test_combinations
    expected_combinations = [[1, 1, 1, 1], [1, 1, 2], [1, 3], [2, 2]]
    assert_equal expected_combinations, combinations(4, [], [1,2,3])

    expected_combinations = [[1, 1, 1, 1, 1], [1, 1, 1, 2], [1, 1, 3], [1, 2, 2], [2, 3]]
    assert_equal expected_combinations, combinations(5, [], [1,2,3])
  end
  
  def test_coin_combinations
    expected_combinations = [[1, 1, 1, 1], [1, 1, 2], [1, 3], [2, 2]]
    assert_equal expected_combinations, coin_combinations(4, [1,2,3])
  end
end
