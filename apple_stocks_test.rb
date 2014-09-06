require 'test/unit'
require_relative 'apple_stocks'

class BestStockTest < Test::Unit::TestCase
  def test_best_stock
    stock_prices_yesterday = [8, 9, 6, 5, 4, 7, 6, 7, 2, 10]
    assert_equal 8, best_stock(stock_prices_yesterday)

    stock_prices_yesterday = [9, 9, 4, 3, 9, 4, 3, 3, 4, 4]
    assert_equal 6, best_stock(stock_prices_yesterday)
  end
end
