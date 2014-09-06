# example: for amount=4 (4¢) and denominations=[1,2,3] (1¢, 2¢ and 3¢), your program would output 4—the number of ways to make 4¢ with those denominations:
#   1¢, 1¢, 1¢, 1¢
#   1¢, 1¢, 2¢
#   1¢, 3¢
#   2¢, 2¢


def coin_combinations(amount, denominations)
  combinations(amount, [], denominations)    
end

def combinations(amount, used, unused)
  combinations_collection = [] 
  unused.each do |coin|
    combination = [].concat(used)
    combination_total = used.inject(0, &:+)
    if (combination_total + coin) < amount
      combination << coin
      combinations_collection.concat(combinations(amount, combination, unused))
    elsif (combination_total + coin) == amount
      combination << coin
      combinations_collection << combination.sort 
      combination = []
    end
  end
  combinations_collection.uniq
end

