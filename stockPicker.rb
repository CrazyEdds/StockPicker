def stock_picker (stocks)
    extrem_days = {
        cheapest_day: 0,
        dearest_day: 0
    }

    best = {
        buy_day: 0,
        sell_day: 0
    }

    best[:income] = stocks[best[:sell_day]] - stocks[best[:buy_day]]

    stocks.each_with_index do |price, day|
        if price < stocks[extrem_days[:cheapest_day]] then extrem_days[:cheapest_day] = day end
        if price > stocks[extrem_days[:dearest_day]] then extrem_days[:dearest_day] = day end
        if best[:income] < stocks[extrem_days[:dearest_day]] - stocks[extrem_days[:cheapest_day]]
            best[:buy_day] = extrem_days[:cheapest_day]
            best[:sell_day] = extrem_days[:dearest_day]
            best[:income] = best[:sell_day] - best[:buy_day] 
        end
        p best[:income]
    end
end

stock_picker([1,2,3])