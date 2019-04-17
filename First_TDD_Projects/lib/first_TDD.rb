def my_uniq(arr)
    un_arr = []
    arr.each do |ele|
        if !un_arr.include? ele
            un_arr << ele
        end
    end
    un_arr
end

def two_sum(arr)

    sums = []
    i = 0

    while i < arr.length - 1
        j = i + 1
        while j < arr.length
            if arr[i] + arr[j] == 0
                sums << [i , j]
            end
            j += 1
        end
        i += 1
    end
    
    sums.empty? ? nil : sums 
    # is this true? ? yep? then this : else that 
end

def my_transpose(arr)
    new_array = Array.new(arr.length) { Array.new(arr.length) }

    arr.each_with_index do |ele, idx|
        ele.each_with_index do |sub_ele, jdx| 
            new_array[idx][jdx] = arr[jdx][idx]
        end 
    end 
    new_array
end

# def stock_picker(arr)
#     biggest_profit = 0
#     profitable_days = []
#     i = 0

#     while i < arr.length - 1 
#         j = i + 1 
#         while j < arr.length 
#             if arr[i] < arr[j] 

#             end 
#         end 
#     end 

#     profitable_days 
# end

# stock_per_day = [[100], [80], [120], [400], 
# [150], [70], [200], [250], [300], [100], [50]]
