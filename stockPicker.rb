def stock_picker (stocks)
    cheapest_day = 0

    best = {
        buy_day: 0,
        sell_day: 0
    }

    best[:income] = stocks[best[:sell_day]] - stocks[best[:buy_day]]

    stocks.each_with_index do |price, day|
        if price < stocks[cheapest_day]
            cheapest_day = day
        end

        if best[:income] < price - stocks[cheapest_day]
            best[:buy_day] = cheapest_day
            best[:sell_day] = day
            best[:income] = stocks[best[:sell_day]] - stocks[best[:buy_day]]
        end
    end
    [best[:buy_day], best[:sell_day]]
end

print stock_picker([17,3,6,9,15,8,6,1,10])