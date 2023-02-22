require 'pry-byebug'

def stock_picker(stock_days)
    highest_profit = 0
    days = []
    stock_days.each_with_index do |first_value, day_buy|
        stock_days.each_with_index do |second_value, day_sell|
            profit = second_value - first_value
            if profit>highest_profit && day_buy < day_sell
                highest_profit = profit
                days = [day_buy, day_sell]
            end
        end
    end

    days
end

p stock_picker([17, 3, 6, 9, 15, 8, 1, 10])
p stock_picker([10, 2, 7, 6, 8, 10])