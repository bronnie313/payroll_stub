def total (prices)
    amount = 0
    index = 0

    while index < prices.length
        amount += prices[index]
        index ++
    end
    amount
end