def stock_picker(stock_prices)
  profits = Array.new
  current_day = 0
  until current_day == stock_prices.length do
    profits.push({
      profit: 0,
      buy_day: current_day,
      sell_day: nil,
    })    
      subsequent_day = current_day + 1
      until subsequent_day == stock_prices.length do
        if ((stock_prices[subsequent_day] - stock_prices[current_day]) > profits.last[:profit])
          profits.last[:profit] = stock_prices[subsequent_day] - stock_prices[current_day] 
          profits.last[:sell_day] = subsequent_day 
        end
        subsequent_day += 1
      end 
    current_day += 1
  end
  best_day =  profits.max_by do |day|
    day[:profit]
  end
  output =[
    best_day[:buy_day],
    best_day[:sell_day]
  ]
end


stock_picker([1, 17,3,6,9,15,8,6,1,10])

