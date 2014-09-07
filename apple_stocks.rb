# I have an array stockPricesYesterday where:
#    The indices are the time, as a number of minutes past trade opening time, which was 9:30am local time.
#    The values are the price of Apple stock at that time, in dollars.
#    For example, the stock cost $500 at 10:30am, so stockPricesYesterday[60] = 500.
#    Write an efficient algorithm for computing the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday. For this problem, we won't allow "shorting"—you must buy before you sell.
def best_stock(stock_prices)
  # should return lowest negative range
  max_profit = 0
  
  stock_prices.each.with_index(1) do |first_price, i|
    stock_prices[i..stock_prices.count].each do |second_price|
      profit = second_price - first_price
      max_profit = max_profit > profit ? max_profit : profit
    end
  end
  max_profit
end
