def stock_picker(arr)
  buysell = [0,0]
  high = arr[1] - arr[0]

    arr.each.with_index{|num, idx|
        for i in idx..(arr.length-1) do 
            if (arr[i] - num > high ? high = arr[i] - num : false)
            buysell[0] = idx
            buysell[1] = i
            end
    end
}
puts "buy on day #{buysell[0]}, sell on day #{buysell[1]}"
return buysell
end

stock_picker([17,3,6,9,15,8,6,1,10])
