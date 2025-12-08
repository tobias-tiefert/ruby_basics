def stock_picker(stock_prices)
  profits = Array.new
  i = 0
  until i == stock_prices.length do
    profits.push({
      profit: 0,
      buy_day: i,
      sell_day: nil,
    })    
      j = i+1
      until j == stock_prices.length do
        if ((stock_prices[j] - stock_prices[i]) > profits.last[:profit])
          profits.last[:profit] = stock_prices[j] - stock_prices[i] 
          profits.last[:sell_day] = j 
        end
        j += 1
      end 
    i += 1
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

