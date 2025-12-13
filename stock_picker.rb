# def stock_picker(stock_prices)
#   profits = Array.new
#   current_day = 0
#   until current_day == stock_prices.length
#     profits.push({
#                     profit: 0,
#                     buy_day: current_day,
#                     sell_day: nil
#                   })
#     subsequent_day = current_day + 1
#     until subsequent_day == stock_prices.length
#       if (stock_prices[subsequent_day] - stock_prices[current_day]) > profits.last[:profit]
#         profits.last[:profit] = stock_prices[subsequent_day] - stock_prices[current_day]
#         profits.last[:sell_day] = subsequent_day
#       end
#       subsequent_day += 1
#     end
#     current_day += 1
#   end
#   best_day = profits.max_by do |day|
#     day[:profit]
#   end
#   output = [
#     best_day[:buy_day],
#     best_day[:sell_day]
#   ]
# end

#
#
# def find_best_day(input_array)
# end

def bubble_sort(input_array)
  output = get_best_day(get_profits(input_array))
  puts [output[:buy_day], output[:sell_day]]
end

def get_profits(input_array)
  profits = []
  input_array.each_with_index do |item, index|
    next unless index < input_array.length - 1 && subsequent_array(input_array, index + 1).max > item

    subsequent = subsequent_array(input_array, index + 1)
    profits.push({
                   profit: subsequent.max - item,
                   buy_day: index,
                   sell_day: subsequent.index(subsequent.max) + index + 1
                 })
  end
  profits
end

def get_best_day(input_array)
  input_array.max_by do |day|
    day[:profit]
  end
end

def subsequent_array(input_array, index)
  output = []
  index.upto(input_array.length - 1) { |num| output.push(input_array[num]) }
  output
end

bubble_sort([6, 9, 3, 17, 15, 8, 6, 1, 10])
