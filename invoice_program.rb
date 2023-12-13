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
