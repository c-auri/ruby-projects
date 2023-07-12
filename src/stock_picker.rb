def stock_picker(prices)
  best_buy_day = 0
  best_sell_day = 0
  best_profit = 0

  current_buy_day = 0
  current_profit = 0

  prices.each_with_index do |price, current_day|
    if price < prices[current_buy_day] then
      current_buy_day = current_day
      current_best_sell_day = current_day
    end
    
    current_profit = price - prices[current_buy_day]
    
    if current_profit > best_profit then
      best_buy_day = current_buy_day
      best_sell_day = current_day
      best_profit = current_profit
    end
  end

  return [best_buy_day, best_sell_day]
end