# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
  prices.each_cons 2 do |a, b|
    profit += b - a if a < b
  end
  profit
end
