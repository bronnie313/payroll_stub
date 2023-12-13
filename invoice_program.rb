# add the price of items all together for each item on the list
def total (prices)
    amount = 0
    prices.each do |price|
        amount += price
    end
    amount
end

prices = [3.99, 25.00, 8.99]
puts format("%.2f", total(prices))

# subtract each item's price form the customer account and return a refund

def refund(prices)
    amount = 0
    prices.each do |price| 
        amount -= price
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
    prices.each do |price|
        amount_off = price / 3.0
        puts format("Your Discount: %.2f", amount_off)
    end
end

show_discounts(prices)