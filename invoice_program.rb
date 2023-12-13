# add the price of items all together for each item on the list
def total (prices)
    amount = 0
    index = 0

    while index < prices.length
        amount += prices[index]
        index += 1
    end
    amount
end

prices = [3.99, 25.00, 8.99]
puts format("%.2f", total(prices))

# subtract each item's price form the customer account and return a refund

def refund(prices)
    amount = 0
    index = 0
    while index < prices.length
        amount -= prices[index]
        index += 1
    end
    amount 
end
puts "---"
prices = [3.99, 25.00, 8.99]
puts format("%.2f", refund(prices))
puts "---"

#  reduce each item's price by 1/3 & print the savings
def show_discounts(prices)
    index = 0
    while index < prices.length
        amount_off = prices[index] / 3.0
        puts format("%.2f", amount_off)
        index += 1
    end
end

show_discounts(prices)